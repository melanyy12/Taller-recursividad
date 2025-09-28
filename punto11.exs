defmodule Matriz do
  # Caso base: matriz vacía
  def suma([]), do: 0

  # Caso recursivo: tomar la primera fila y sumarla con el resto
  def suma([fila | resto]), do: suma_fila(fila) + suma(resto)


  # Caso base: fila vacía
  defp suma_fila([]), do: 0

  # Caso recursivo: sumar cabeza con recursión en la cola
  defp suma_fila([x | xs]), do: x + suma_fila(xs)
end

IO.puts Matriz.suma([[1, 2, 3], [4, 5], [6]])
IO.puts Matriz.suma([[10, 20], [30], [40, 50]])
