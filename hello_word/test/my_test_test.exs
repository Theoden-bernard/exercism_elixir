defmodule MyTestTest do
  use ExUnit.Case
  doctest MyTest

  test "greets the world" do
    assert MyTest.hello() == :world
  end
end
