defmodule Hotel do

  # Recursividad lineal (NO tail)

  def total_dias([]), do: 0
  def total_dias([%{dias: d} | resto]), do: d + total_dias(resto)


  def main do
    reservas = [
      %{cliente: "Ana", dias: 3},
      %{cliente: "Luis", dias: 5},
      %{cliente: "Sofía", dias: 2}
    ]

    IO.puts("Total de días reservados: #{total_dias(reservas)}")
  end
end

Hotel.main()
