defmodule Potencia do
  # Caso base: cualquier número elevado a 0 es 1
  def pow(_, 0), do: 1

  # Caso recursivo: base^exp = base * base^(exp - 1)
  def pow(base, exp) when exp > 0 do
    base * pow(base, exp - 1)
  end
end


IO.puts Potencia.pow(2, 5)
IO.puts Potencia.pow(3, 3)
IO.puts Potencia.pow(5, 0)
