defmodule Main do
  # Recursividad NO tail
  def balance([]), do: 0
  def balance([h | t]), do: h + balance(t)

  # Recursividad tail
def balance_dos([], cont), do: cont
def balance_dos([h | t], cont), do: balance_dos(t, cont + h)

  # Punto de entrada
  def main do
    transacciones = [100, -50, 20, -30]

    IO.puts("Balance con Recursividad Normal")
    IO.puts("Balance final: #{balance(transacciones)}")

    IO.puts("\nBalance con Recursividad de Cola ")
    IO.puts("Balance final: #{balance_dos(transacciones, 0)}")
  end
end

Main.main()
