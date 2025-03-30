defmodule LogLevelTest do
  use ExUnit.Case
  doctest LogLevel

  test "greets the world" do
    assert LogLevel.hello() == :world
  end
end
