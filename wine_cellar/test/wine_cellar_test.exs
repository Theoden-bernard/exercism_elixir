defmodule WineCellarTest do
  use ExUnit.Case
  doctest WineCellar

  test "greets the world" do
    assert WineCellar.hello() == :world
  end
end
