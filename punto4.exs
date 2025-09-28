defmodule Buscador do
  # Caso base: lista vacía → no encontrado
  def buscar(_, []), do: false

  # Caso en que el primer elemento coincide con el buscado
  def buscar(elem, [elem | _]), do: true

  # Caso recursivo: seguir buscando en la cola
  def buscar(elem, [_ | cola]), do: buscar(elem, cola)
end


IO.puts Buscador.buscar(3, [1, 2, 3, 4])
IO.puts Buscador.buscar(5, [1, 2, 3, 4])
IO.puts Buscador.buscar(:a, [:b, :c, :a])
