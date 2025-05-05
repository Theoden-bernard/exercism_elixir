defmodule RPG.CharacterSheet do
  
  def welcome(), do: IO.puts("Welcome! Let's fill out your character sheet together.")
  def ask_name(), do: IO.gets("What is your character's name?\n") |> String.trim()
  def ask_class(), do: IO.gets("What is your character's class?\n") |>String.trim()
  def ask_level(), do: IO.gets("What is your character's level?\n") |>String.trim() |>String.to_integer()

  def run() do

    RPG.CharacterSheet.welcome
    %{}
    |>Map.put(:name, RPG.CharacterSheet.ask_name())
    |>Map.put(:class, RPG.CharacterSheet.ask_class())
    |>Map.put(:level, RPG.CharacterSheet.ask_level())    
    |>IO.inspect( label: "Your character")
  end
end