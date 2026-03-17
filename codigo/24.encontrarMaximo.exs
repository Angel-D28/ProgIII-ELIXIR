defmodule Listas do
  def main do
  "ingrese la cantidad de elementos que quiere agregar: "
  |>Util.ingresar(:entero)
  |>listarElementos()
  |>maximo()
  |>generar_mensaje()
  |>Util.mostrar_mensaje()
  end

  defp listarElementos(0), do: []
  defp listarElementos(n) when n > 0 do
    numeroEnLista = Util.ingresar("ingrese el numero : ", :entero)
    [numeroEnLista | listarElementos(n - 1)]
  end

  def maximo([head | tail]), do: maximo(tail , head)
  def maximo([], mayor), do: mayor
  def maximo([head | tail], mayor) when head > mayor, do: maximo(tail , head)
  def maximo([_head | tail], mayor) , do: maximo(tail , mayor)

  defp generar_mensaje(mayor), do: "el numero mayor de la lista es #{mayor}"

end
Listas.main()
