# HighSchoolSweetheart

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `high_school_sweetheart` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:high_school_sweetheart, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/high_school_sweetheart>.

Instructions
In this exercise, you are going to help high school sweethearts profess their love on social media by generating an ASCII box with their initials:

❤-------------------❤
|  J. K.  +  M. B.  |
❤-------------------❤

1. Get the name's first letter
Implement the HighSchoolSweetheart.first_letter/1 function. It should take a name and return its first letter. It should clean up any unnecessary whitespace from the name.
__________________________________________
HighSchoolSweetheart.first_letter("Jane")
# => "J"
__________________________________________

2. Format the first letter as an initial
Implement the HighSchoolSweetheart.initial/1 function. It should take a name and return its first letter, uppercase, followed by a dot. Make sure to reuse HighSchoolSweetheart.first_letter/1 that you defined in the previous step.
__________________________________________
HighSchoolSweetheart.initial("Robert")
# => "R."
__________________________________________

3. Split the full name into the first name and the last name
Implement the HighSchoolSweetheart.initials/1 function. It should take a full name, consisting of a first name and a last name separated by a space, and return the initials. Make sure to reuse HighSchoolSweetheart.initial/1 that you defined in the previous step.
__________________________________________
HighSchoolSweetheart.initials("Lance Green")
# => "L. G."
__________________________________________

4. Put the initials inside of the ASCII box
Implement the HighSchoolSweetheart.pair/2 function. It should take two full names and return the initials inside an ASCII box. You don't need to draw the box yourself - make use of the box included in the code comment. Make sure to reuse HighSchoolSweetheart.initials/1 that you defined in the previous step.
__________________________________________
HighSchoolSweetheart.pair("Blake Miller", "Riley Lewis")
# => """
# ❤-------------------❤
# |  B. M.  +  R. L.  |
# ❤-------------------❤
# """
__________________________________________