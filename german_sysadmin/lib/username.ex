defmodule Username do

  def sanitize(word), do: sanitize(word, ~c"")

  def sanitize([], word), do: word

  def sanitize([head | tail], new_word) do

    case head do
    
      223 -> sanitize(tail, new_word ++ ~c"ss") # ß becomes ss
      228 -> sanitize(tail, new_word ++ ~c"ae") # ä becomes ae
      246 -> sanitize(tail, new_word ++ ~c"oe") # ö becomes oe
      252 -> sanitize(tail, new_word ++ ~c"ue") # ü becomes ue
      head when (head > 0 and head < 65) or (head > 122 and head < 127) -> sanitize(tail, new_word)
      _ -> sanitize(tail, new_word ++ [head])
    end

  end

end
