# Instructions
While preparing to bake cookies for your friends, you have found that you have to convert some of the measurements used in the recipe. Being only familiar with the metric system, you need to come up with a way to convert common US baking measurements to milliliters (mL) for your own ease.

Use this conversion chart for your solution:

<table>
  <tr>
    <td align="center" width="96">
      Unit to convert	
    </td>
    <td align="center" width="96">
      volume
    </td>
    <td align="center" width="96">
      in milliliters (mL)
    </td>
  </tr>
  <tr>
    <td align="center" width="96">
      mL	    
    </td>
    <td align="center" width="96">
      1
    </td>
    <td align="center" width="96">
      1
    </td>
  </tr>
  <tr>
    <td align="center" width="96">
      US cup
    </td>
    <td align="center" width="96">
      1
    </td>
    <td align="center" width="96">
      240
    </td>
  </tr>
  <tr>
    <td align="center" width="96">
      US fluid once
    </td>
    <td align="center" width="96">
      1
    </td>
    <td align="center" width="96">
      30
    </td>
  </tr>
  <tr>
    <td align="center" width="96">
      US teaspoon
    </td>
    <td align="center" width="96">
      1
    </td>
    <td align="center" width="96">
      5
    </td>
  </tr>
  <tr>
    <td align="center" width="96">
      US tablespoon
    </td>
    <td align="center" width="96">
      1
    </td>
    <td align="center" width="96">
      15
    </td>
  </tr>
<table>
  
Being a talented programmer in training, you decide to use milliliters as a transition unit to facilitate the conversion from any unit listed to any other (even itself).

## 1. Get the numeric component from a volume-pair
Implement the KitchenCalculator.get_volume/1 function. Given a volume-pair tuple, it should return just the numeric component.

```elixir
KitchenCalculator.get_volume({:cup, 2.0})

# => 2.0
```

## 2. Convert the volume-pair to milliliters
Implement the KitchenCalculator.to_milliliter/1 function. Given a volume-pair tuple, it should convert the volume to milliliters using the conversion chart.

Use multiple function clauses and pattern matching to create the functions for each unit. The atoms used to denote each unit are: :cup, :fluid_ounce, :teaspoon, :tablespoon, :milliliter. Return the result of the conversion wrapped in a tuple.

```elixir
KitchenCalculator.to_milliliter({:cup, 2.5})
# => {:milliliter, 600.0}
```

## 3. Convert the milliliter volume-pair to another unit
Implement the KitchenCalculator.from_milliliter/2 function. Given a volume-pair tuple and the desired unit, it should convert the volume to the desired unit using the conversion chart.

Use multiple function clauses and pattern matching to create the functions for each unit. The atoms used to denote each unit are: :cup, :fluid_ounce, :teaspoon, :tablespoon, :milliliter

```elixir
KitchenCalculator.from_milliliter({:milliliter, 1320.0}, :cup)
# => {:cup, 5.5}
```

## 4. Convert from any unit to any unit
Implement the KitchenCalculator.convert/2 function. Given a volume-pair tuple and the desired unit, it should convert the given volume to the desired unit.

```elixir
KitchenCalculator.convert({:teaspoon, 9.0}, :tablespoon)
# => {:tablespoon, 3.0}
```