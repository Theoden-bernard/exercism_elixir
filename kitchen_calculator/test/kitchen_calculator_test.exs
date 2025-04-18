defmodule KitchenCalculatorTest do
  use ExUnit.Case
  doctest KitchenCalculator

  test "greets the world" do
    assert KitchenCalculator.hello() == :world
  end
end
