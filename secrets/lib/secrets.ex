defmodule Secrets do

  def secret_add(secret), do: _add = fn param -> param + secret end
  
  def secret_subtract(secret), do: _sub = fn param -> param - secret end

  def secret_multiply(secret), do: _mult = fn param -> param * secret end

  def secret_divide(secret), do: _div = fn param -> trunc(param / secret) end

  def secret_and(secret), do: _and = fn param -> Bitwise.band(param, secret) end

  def secret_xor(secret), do: _xor = fn param -> Bitwise.bxor(param, secret) end

end
