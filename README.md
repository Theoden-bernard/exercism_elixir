defmodule UpdateReadme do
  def run() do
    exercises = get_exercises_list()

    readme_content = generate_readme_content(exercises)

    File.write!("README.md", readme_content)
    IO.puts("README.md mis à jour avec succès !")
  end

  defp get_exercises_list() do
    "."
    |> File.ls!()
    |> Enum.filter(&File.dir?/1)
    |> Enum.reject(&(&1 in [".git", "_build", "deps"]))
    |> Enum.sort()
    |> Enum.map(fn dossier -> "- [#{dossier}](./#{dossier})" end)
    |> Enum.join("\n")
  end

  defp generate_readme_content(exercises) do
    """
    # 🧠 Elixir Exercises

    Welcome to my Elixir exercises repository.  
    Each folder contains a small project developed to learn or deepen my understanding of the language.

    📚 **Objective**: Progress in Elixir by practicing regularly, while keeping a clean and clear track of my journey.

    ---

    ## 🚀 Repo Structure

    Each exercise is an independent project with its own `mix` environment.  
    Here are the currently available folders:

    #{exercises}

    > 🔄 This list can be generated automatically using an Elixir script.

    ---

    ## 🧪 Running an Exercise

    To run an exercise:

    ```bash
    cd folder_name
    mix test
    ```

    You can also start an interactive console with:

    ```bash
    iex -S mix
    ```

    ---

    ## 🧰 Tools Used

    - [Elixir](https://elixir-lang.org/)
    - `mix` to manage the projects
    - `ExUnit` for testing

    ---

    ## 📈 Git and Workflow

    - All exercises are properly versioned
    - Each commit follows a convention (`feat:`, `fix:`, `refactor:...`)
    - Exercise instructions are available in each folder via a `README.md` file

    ---

    ## 💡 Next Steps

    - Add new exercises (Exercism, personal challenges, etc.)
    - Add badges, dynamic table of contents, or GitHub stats
    - Set up a script to generate the list of exercises automatically

    ---

    ## 📣 Contact

    Developed with passion by **Théoden** ⚔️  
    > "Code every day. Learn every day. Grow every day." 💪
    """
  end
end
