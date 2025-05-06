defmodule UsernameTest do
  use ExUnit.Case
  doctest Username

  test "greets the world" do
    assert Username.hello() == :world
  end
end
