defmodule Permutaciones do
  # Caso base:
  def permutar([]), do: [[]]

  # Caso recursivo
  def permutar(lista), do: permutar(lista, [])


  defp permutar([], _), do: []


  defp permutar([h | t], resto) do
    agregar(h, permutar(t ++ resto)) ++ permutar(t, [h | resto])
  end


  defp agregar(_, []), do: []
  defp agregar(elem, [h | t]), do: [[elem | h] | agregar(elem, t)]
end

Permutaciones.permutar([1, 2, 3])
|> IO.inspect(label: "Permutaciones de [1, 2, 3]")
