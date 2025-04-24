defmodule BirdCount do

  def today(list), do: List.first(list)

  def increment_day_count([]), do: [1]

  def increment_day_count(list), do: [(today(list) + 1)] ++ tl(list)

  def has_day_without_birds?(0 = _list_a)do
    true
  end

  def has_day_without_birds?([])do
    false
  end

  def has_day_without_birds?(list) do 
    
    [head | tail] = list
    
    if(list == []) do
      false
    end

    if(head == 0) do
      
      # has_day_without_birds?(head)
      true
    else

      has_day_without_birds?(tail)

    end
    

  end
  
end