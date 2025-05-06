defmodule GermanSysadminTest do
  use ExUnit.Case
  doctest GermanSysadmin

  test "greets the world" do
    assert GermanSysadmin.hello() == :world
  end
end
