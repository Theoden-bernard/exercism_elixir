defmodule BirdCountTest do
  use ExUnit.Case
  doctest BirdCount

  test "greets the world" do
    assert BirdCount.hello() == :world
  end
end
