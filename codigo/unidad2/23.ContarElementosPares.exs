defmodule Listas do
  def main do

  elemento1= Util.ingresar("ingrese el primer numero de la lista: ", :entero)
  elemento2= Util.ingresar("ingrese el segundo numero de la lista: ", :entero)
  elemento3= Util.ingresar("ingrese el tercer numero de la lista: ", :entero)
  [elemento1, elemento2, elemento3]
  |>contar_pares()
  |>generar_mensaje()
  |>Util.mostrar_mensaje()

  end

  def contar_pares([]), do: 0
  def contar_pares([head | tail]) when rem(head,2) == 0, do: 1 + contar_pares(tail)
  def contar_pares([_head | tail]) , do: contar_pares(tail)

  defp generar_mensaje(pares), do: "Hay #{pares} par/pares"
end
Listas.main()
