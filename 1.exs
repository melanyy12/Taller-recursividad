defmodule Primero do
  def main do
    n = 5
    resultado = factorial(n)
    IO.puts("El factorial de #{n} es #{resultado}")

    m = -3
    resultado2 = factorial(m)
    IO.puts("El factorial de #{m} es #{resultado2}")
  end

  # Caso error: número negativo
  def factorial(n) when n < 0 do
    "Error: el número no puede ser negativo"
  end

  # Caso base: 0! = 1
  def factorial(0), do: 1

  # Caso recursivo
  def factorial(n), do: n * factorial(n - 1)
end

Primero.main()
