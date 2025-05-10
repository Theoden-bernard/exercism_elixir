defmodule TakeANumberTest do
  use ExUnit.Case
  doctest TakeANumber

  test "greets the world" do
    assert TakeANumber.hello() == :world
  end
end
