# LanguageList

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `language_list` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:language_list, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/language_list>.

Instructions
In this exercise you need to implement some functions to manipulate a list of programming languages.

1. Define a function to return an empty language list
Define the new/0 function that takes no arguments and returns an empty list.

____________________
LanguageList.new()
# => []
____________________

2. Define a function to add a language to the list
Define the add/2 function that takes 2 arguments (a language list and a string literal of a language). It should return the resulting list with the new language prepended to the given list.

____________________
language_list = LanguageList.new()
# => []
language_list = LanguageList.add(language_list, "Clojure")
# => ["Clojure"]
language_list = LanguageList.add(language_list, "Haskell")
# => ["Haskell", "Clojure"]
____________________

3. Define a function to remove a language from the list
Define the remove/1 function that takes 1 argument (a language list). It should return the list without the first item. Assume the list will always have at least one item.

____________________
language_list = LanguageList.new()
# => []
language_list = LanguageList.add(language_list, "Clojure")
# => ["Clojure"]
language_list = LanguageList.add(language_list, "Haskell")
# => ["Haskell", "Clojure"]
language_list = LanguageList.remove(language_list)
# => ["Clojure"]
____________________

4. Define a function to return the first item in the list
Define the first/1 function that takes 1 argument (a language list). It should return the first language in the list. Assume the list will always have at least one item.

____________________
language_list = LanguageList.new()
# => []
language_list = LanguageList.add(language_list, "Elm")
# => ["Elm"]
language_list = LanguageList.add(language_list, "Prolog")
# => ["Prolog", "Elm"]
LanguageList.first(language_list)
# => "Prolog"
____________________

5. Define a function to return how many languages are in the list
Define the count/1 function that takes 1 argument (a language list). It should return the number of languages in the list.

____________________
language_list = LanguageList.new()
# => []
language_list = LanguageList.add(language_list, "Elm")
# => ["Elm"]
language_list = LanguageList.add(language_list, "Prolog")
# => ["Prolog", "Elm"]
LanguageList.count(language_list)
# => 2
____________________

6. Define a function to determine if the list includes a functional language
Define the functional_list?/1 function which takes 1 argument (a language list). It should return a boolean value. It should return true if "Elixir" is one of the languages in the list.

____________________
language_list = LanguageList.new()
# => []
language_list = LanguageList.add(language_list, "Elixir")
# => ["Elixir"]
LanguageList.functional_list?(language_list)
# => true
____________________