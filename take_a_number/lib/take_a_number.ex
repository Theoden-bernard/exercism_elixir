defmodule TakeANumber do
  def start() do
    spawn(fn -> 2 + 2 end)
  end
end
