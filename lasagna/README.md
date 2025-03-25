# Lasagna

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `lasagna` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:lasagna, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/lasagna>.

exercise instructions :

Instructions
In this exercise you're going to write some code to help you cook a brilliant lasagna from your favorite cooking book.

You have five tasks, all related to the time spent cooking the lasagna.

1. Define the expected oven time in minutes
Define the Lasagna.expected_minutes_in_oven/0 function that does not take any arguments and returns how many minutes the lasagna should be in the oven. According to the cooking book, the expected oven time in minutes is 40:

_________________
Lasagna.expected_minutes_in_oven()
# => 40
_________________

2. Calculate the remaining oven time in minutes
Define the Lasagna.remaining_minutes_in_oven/1 function that takes the actual minutes the lasagna has been in the oven as an argument and returns how many minutes the lasagna still has to remain in the oven, based on the expected oven time in minutes from the previous task.

_________________
Lasagna.remaining_minutes_in_oven(30)
# => 10
_________________

3. Calculate the preparation time in minutes
Define the Lasagna.preparation_time_in_minutes/1 function that takes the number of layers you added to the lasagna as an argument and returns how many minutes you spent preparing the lasagna, assuming each layer takes you 2 minutes to prepare.

_________________
Lasagna.preparation_time_in_minutes(2)
# => 4
_________________

4. Calculate the total working time in minutes
Define the Lasagna.total_time_in_minutes/2 function that takes two arguments: the first argument is the number of layers you added to the lasagna, and the second argument is the number of minutes the lasagna has been in the oven. The function should return how many minutes in total you've worked on cooking the lasagna, which is the sum of the preparation time in minutes, and the time in minutes the lasagna has spent in the oven at the moment.

_________________
Lasagna.total_time_in_minutes(3, 20)
# => 26
_________________

5. Create a notification that the lasagna is ready
Define the Lasagna.alarm/0 function that does not take any arguments and returns a message indicating that the lasagna is ready to eat.

_________________
Lasagna.alarm()
# => "Ding!"
_________________