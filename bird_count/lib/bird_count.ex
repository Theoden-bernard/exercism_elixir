defmodule BirdCount do

  def today(list), do: List.first(list)

  def increment_day_count([]), do: [1]
  def increment_day_count(list), do: [(today(list) + 1)] ++ tl(list)

  def has_day_without_birds?([head | _tail]) when head == 0, do: true
  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([_head | tail]), do: has_day_without_birds?(tail)

  def total([]), do: 0
  def total([head | tail]), do: head + total(tail)

  def busy_days([]), do: 0
  def busy_days([head | tail]) when head >= 5, do: 1 + busy_days(tail)
  def busy_days([_head | tail]), do: busy_days(tail)

end