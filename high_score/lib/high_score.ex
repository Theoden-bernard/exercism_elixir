defmodule HighScore do

  @default_value 0
    
  def new(), do: %{}
  
  def add_player(scores, name, score \\ @default_value), do: Map.put(scores, name, score)
  
  def remove_player(scores, name), do: Map.delete(scores, name)

  def reset_score(scores, name)when scores == %{}, do: add_player(scores, name, @default_value)
  def reset_score(scores, name), do: %{scores | name => 0}

  def update_score(scores, name, score)when scores == %{}, do: add_player(scores, name, score)
  def update_score(scores, name, score), do: Map.update(scores, name, @default_value, fn param -> score + param end)

  def get_players(scores), do: Map.keys(scores)
  
end