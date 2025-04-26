defmodule Username do

  def sanitize([]) do
    0
  end

  def sanitize(word) do
    # ä becomes ae
    # ö becomes oe
    # ü becomes ue
    # ß becomes ss
    
    [head | tail] = word

    case head do
      223 -> :ß
      228 -> :ä
      246 -> :ö
      252 -> :ü
      head when head < 65 -> :<
      head when head > 123 -> :>
      _ -> sanitize(tail)
    end
  
  end

end
