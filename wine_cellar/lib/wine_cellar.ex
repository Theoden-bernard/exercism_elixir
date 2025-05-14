defmodule WineCellar do
  def explain_colors, do:
    [white: "Fermented without skin contact.",
    red: "Fermented with skin contact using dark-colored grapes.",
    rose: "Fermented with some skin contact, but not enough to qualify as a red wine."]

  def filter(cellar, color, opts ) when Keyword.get(opts, :country) != nil do
    :country
  end
  
  def filter(cellar, color, opts ) when Keyword.get(opts, :year) != nil do
    :year
  end
  
  def filter(cellar, color, opts ) when opts != [] do

      #aux lieux d'ecrire en dure les :country je doit selectioneer l'element 1 puis l'element 2  
      if(Keyword.get(opts, :country) != nil)do
        Keyword.get_values(cellar, color)
        |> filter_by_year( Keyword.get(opts, :year))
        |> filter_by_country(Keyword.get(opts, :country))
      else
        Keyword.get_values(cellar, color)
        |> filter_by_year( Keyword.get(opts, :year))
      end
#      [head | tail] = opts
 #     test = Keyword.get_values(cellar, color)
  #    |> filter_by_year(elem(head, 1))
   #   filter(test, 0, tail)
  end
  
  def filter(cellar, color, _opts \\ []),
    do: Keyword.get_values(cellar, color)
  
    

  # The functions below do not need to be modified.

  defp filter_by_year(wines, year)
  defp filter_by_year([], _year), do: []

  defp filter_by_year([{_, year, _} = wine | tail], year) do
    [wine | filter_by_year(tail, year)]
  end

  defp filter_by_year([{_, _, _} | tail], year) do
    filter_by_year(tail, year)
  end

  defp filter_by_country(wines, country)
  defp filter_by_country([], _country), do: []

  defp filter_by_country([{_, _, country} = wine | tail], country) do
    [wine | filter_by_country(tail, country)]
  end

  defp filter_by_country([{_, _, _} | tail], country) do
    filter_by_country(tail, country)
  end
end
