defmodule Arbol do
  # Definimos un nodo de árbol binario
  defstruct valor: nil, izq: nil, der: nil


  def rutas_con_suma(nil, _objetivo), do: []

  # Caso base: hoja
  def rutas_con_suma(%Arbol{valor: v, izq: nil, der: nil}, objetivo) when v == objetivo do
    [[v]]
  end

  def rutas_con_suma(%Arbol{valor: v, izq: nil, der: nil}, _objetivo), do: []


  def rutas_con_suma(%Arbol{valor: v, izq: izq, der: der}, objetivo) do

    nuevas_rutas =
      rutas_con_suma(izq, objetivo - v) ++ rutas_con_suma(der, objetivo - v)

    Enum.map(nuevas_rutas, fn ruta -> [v | ruta] end)
  end
end
