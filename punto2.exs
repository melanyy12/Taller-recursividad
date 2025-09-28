defmodule Contador do
  # Caso base: lista vacía → 0
  def contar([]), do: 0

  # Caso recursivo: lista con al menos un elemento
  def contar([_ | cola]), do: 1 + contar(cola)
end

IO.puts Contador.contar([10, 20, 30, 40])
IO.puts Contador.contar([])
