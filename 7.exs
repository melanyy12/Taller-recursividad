defmodule Main do
  # Caso base: lista vacía
  def suma_pares([]), do: 0

  # Si la cabeza es par, la sumo
  def suma_pares([h | t]) when rem(h, 2) == 0, do: h + suma_pares(t)

  # Si la cabeza es impar, la ignoro
  def suma_pares([_h | t]), do: suma_pares(t)


  def main do
    lista = [1, 2, 3, 4, 5, 6]
    IO.puts("La suma de los pares es: #{suma_pares(lista)}")
  end
end

Main.main()
