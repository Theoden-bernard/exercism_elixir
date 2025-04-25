# BirdCount

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `bird_count` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:bird_count, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/bird_count>.

1. Check how many birds visited today
Implement the BirdCount.today/1 function. It should take a list of daily bird counts and return today's count. If the list is empty, it should return nil.
_____________________________________
BirdCount.today([2, 5, 1])
# => 2
_____________________________________

2. Increment today's count
Implement the BirdCount.increment_day_count/1 function. It should take a list of daily bird counts and increment the today's count by 1. If the list is empty, return [1].
_____________________________________
BirdCount.increment_day_count([4, 0, 2])
# => [5, 0, 2]
_____________________________________

3. Check if there was a day with no visiting birds
Implement the BirdCount.has_day_without_birds?/1 function. It should take a list of daily bird counts. It should return true if there was at least one day when no birds visited the garden, and false otherwise.
_____________________________________
BirdCount.has_day_without_birds?([2, 0, 4])
# => true

BirdCount.has_day_without_birds?([3, 8, 1, 5])
# => false
_____________________________________

4. Calculate the total number of visiting birds
Implement the BirdCount.total/1 function. It should take a list of daily bird counts and return the total number that visited your garden since you started collecting the data.
_____________________________________
BirdCount.total([4, 0, 9, 0, 5])
# => 18
_____________________________________

5. Calculate the number of busy days
Some days are busier than others. A busy day is one where five or more birds have visited your garden.

Implement the BirdCount.busy_days/1 function. It should take a list of daily bird counts and return the number of busy days.
_____________________________________
BirdCount.busy_days([4, 5, 0, 0, 6])
# => 2