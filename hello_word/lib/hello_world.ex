defmodule HelloWorld do
  @doc """
  Simply returns "Hello, World!"
  """
  @spec hello :: String.t()

  def hello do

    # String.upcase("Hello, World!")
    String.split("Hello, World!", trim: true)

  end
end
