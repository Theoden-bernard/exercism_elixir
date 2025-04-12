# GuessingGame

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `guessing_game` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:guessing_game, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/guessing_game>.

Instructions
You are creating a trivial online game where a friend can guess a secret number. You want to give some feedback, but not give away the answer with a guess. You need to devise a function to provide different responses depending on how the guess relates to the secret number.

Condition	Response
When the guess matches the secret number	"Correct"
When the guess is one more or one less than the secret number	"So close"
When the guess is greater than the secret number	"Too high"
When the guess is less than the secret number	"Too low"
When a guess isn't made	"Make a guess"
All guesses and secret numbers are integer numbers.

1. Make the response when the guess matches the secret number
Implement the compare/2 function which takes two arguments, secret_number and guess, which are both integers.

GuessingGame.compare(5, 5)
# => "Correct"
___________________________

2. Make the response when the guess is greater than the secret number
Modify the compare function to respond to guesses that are higher than the secret number.

GuessingGame.compare(5, 8)
# => "Too high"
___________________________

3. Make the response when the guess is less than the secret number
Modify the compare function to respond to guesses that are lower than the secret number.

GuessingGame.compare(5, 2)
# => "Too low"
___________________________

4. Make the responses when the guess is one more or one less than the secret number
Modify the compare function to respond to guesses that are close to the secret number.

GuessingGame.compare(5, 6)
# => "So close"
GuessingGame.compare(5, 4)
# => "So close"
___________________________

5. Make the response when there is no guess
Modify the compare function to respond to a lack of guess.

GuessingGame.compare(5)
# => "Make a guess"

GuessingGame.compare(5, :no_guess)
# => "Make a guess"
___________________________