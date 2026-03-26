defmodule Listas do
  def main do

  elemento1= Util.ingresar("ingrese el primer numero de la lista: ", :entero)
  elemento2= Util.ingresar("ingrese el segundo numero de la lista: ", :entero)
  elemento3= Util.ingresar("ingrese el tercer numero de la lista: ", :entero)
  [elemento1, elemento2, elemento3]
  |>sumar()
  |>generar_mensaje()
  |>Util.mostrar_mensaje()

  end

  def sumar([]), do: 0
  def sumar([head | tail]), do: head + sumar(tail)

  defp generar_mensaje(suma), do: "el resultado de la suma de los elementos de la lista es: #{suma}"
end
Listas.main()
