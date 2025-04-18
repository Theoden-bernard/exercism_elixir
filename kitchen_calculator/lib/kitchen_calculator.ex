defmodule KitchenCalculator do
  
  def get_volume(volume_pair), do: elem(volume_pair, 1)

  def to_milliliter({:cup, _is_number} = volume_pair), do: {:milliliter, 240 * get_volume(volume_pair)}

  def to_milliliter({:fluid_ounce, _is_number} = volume_pair), do: {:milliliter, 30 * get_volume(volume_pair)}

  def to_milliliter({:teaspoon, _is_number} = volume_pair), do: {:milliliter, 5 * get_volume(volume_pair)}

  def to_milliliter({:tablespoon, _is_number} = volume_pair), do: {:milliliter, 15 * get_volume(volume_pair)}

  def to_milliliter({:milliliter, _is_number} = volume_pair), do: {:milliliter, get_volume(volume_pair)}

  def from_milliliter(volume_pair, :cup = unit), do: {unit, get_volume(volume_pair) / 240}

  def from_milliliter(volume_pair, :fluid_ounce = unit), do: {unit, get_volume(volume_pair) / 30}

  def from_milliliter(volume_pair, :teaspoon = unit), do: {unit, get_volume(volume_pair) / 5}

  def from_milliliter(volume_pair, :tablespoon = unit), do: {unit, get_volume(volume_pair) / 15}

  def from_milliliter(volume_pair, :milliliter = unit), do: {unit, get_volume(volume_pair)}

  def convert(volume_pair, unit) do
    volume_pair |> to_milliliter() |> from_milliliter(unit)
  end
  
end
