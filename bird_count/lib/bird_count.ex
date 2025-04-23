defmodule BirdCount do

  def today(list), do: List.first(list)

  def increment_day_count([]), do: [1]

  def increment_day_count(list), do: [(today(list) + 1)] ++ tl(list)
  
end