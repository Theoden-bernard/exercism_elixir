defmodule HighSchoolSweetheart do
  
  def first_letter(name), do: name |> String.trim_leading() |> String.first()

  def initial(name), do: name |> first_letter() |> String.upcase() |> Kernel.<>(".")

  def initials(full_name) do
    name_split = String.split(full_name, " ")
    first_name = Enum.at(name_split, 0) |> initial()
    last_name = Enum.at(name_split, 1) |> initial()
    first_name <> " " <> last_name
  end

  def pair(full_name1, full_name2) do
    # ❤-------------------❤
    # |  X. X.  +  X. X.  |
    # ❤-------------------❤
    """
    ❤-------------------❤
    |  #{initials(full_name1)}  +  #{initials(full_name2)}  |
    ❤-------------------❤
    """
  end
  
end