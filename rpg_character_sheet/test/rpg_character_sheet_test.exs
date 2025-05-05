defmodule RpgCharacterSheetTest do
  use ExUnit.Case
  doctest RpgCharacterSheet

  test "greets the world" do
    assert RpgCharacterSheet.hello() == :world
  end
end
