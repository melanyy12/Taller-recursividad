defmodule Tienda do
  # Caso base: lista vacía → total 0
  def total([]), do: 0

  # Caso recursivo: sumar la cantidad del primer pedido con el resto
  def total([%{cantidad: c} | cola]), do: c + total(cola)
end


pedidos = [
  %{producto: "Camisa", cantidad: 3},
  %{producto: "Pantalón", cantidad: 2},
  %{producto: "Zapatos", cantidad: 5}
]

IO.puts Tienda.total(pedidos)
IO.puts Tienda.total([])
