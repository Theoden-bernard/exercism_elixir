# KitchenCalculator

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `kitchen_calculator` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:kitchen_calculator, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/kitchen_calculator>.

1. Get the numeric component from a volume-pair
Implement the KitchenCalculator.get_volume/1 function. Given a volume-pair tuple, it should return just the numeric component.
_______________________________________
KitchenCalculator.get_volume({:cup, 2.0})

# => 2.0
_______________________________________

2. Convert the volume-pair to milliliters
Implement the KitchenCalculator.to_milliliter/1 function. Given a volume-pair tuple, it should convert the volume to milliliters using the conversion chart.

Use multiple function clauses and pattern matching to create the functions for each unit. The atoms used to denote each unit are: :cup, :fluid_ounce, :teaspoon, :tablespoon, :milliliter. Return the result of the conversion wrapped in a tuple.
_______________________________________
KitchenCalculator.to_milliliter({:cup, 2.5})
# => {:milliliter, 600.0}
_______________________________________

3. Convert the milliliter volume-pair to another unit
Implement the KitchenCalculator.from_milliliter/2 function. Given a volume-pair tuple and the desired unit, it should convert the volume to the desired unit using the conversion chart.

Use multiple function clauses and pattern matching to create the functions for each unit. The atoms used to denote each unit are: :cup, :fluid_ounce, :teaspoon, :tablespoon, :milliliter
_______________________________________
KitchenCalculator.from_milliliter({:milliliter, 1320.0}, :cup)
# => {:cup, 5.5}
_______________________________________

4. Convert from any unit to any unit
Implement the KitchenCalculator.convert/2 function. Given a volume-pair tuple and the desired unit, it should convert the given volume to the desired unit.
_______________________________________
KitchenCalculator.convert({:teaspoon, 9.0}, :tablespoon)
# => {:tablespoon, 3.0}
_______________________________________