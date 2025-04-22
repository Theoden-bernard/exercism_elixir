defmodule BirdCount do
  
  def count([]) do 
    0
  end

  def count([head | tail]) do 
    result = 1 + count(tail)
    IO.inspect (head)
    IO.inspect (tail)
    result
  end

end