defmodule GuessingGame do

  def compare(secret_number), do: compare(secret_number, :no_guess)

  def compare(_secret_number, :no_guess), do: "Make a guess"
  
  def compare(_secret_number, guess) when is_atom(guess) == :true, do: "Make a guess"
  
  def compare(secret_number, guess) when secret_number == guess, do: "Correct"

  def compare(secret_number, guess) when abs(secret_number - guess) == 1, do: "So close"

  def compare(secret_number, guess) when secret_number < guess, do: "Too high"
  
  def compare(secret_number, guess) when secret_number > guess, do: "Too low"

end