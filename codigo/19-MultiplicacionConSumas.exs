defmodule Multiplicaciones do
  def main do
    factor1 = Util.ingresar("Ingrese el Factor 1: ", :entero)
    factor2 = Util.ingresar("Ingrese el Factor 2: ", :entero)
    multiplicacion(factor1 , factor2)
    |>generar_mensaje()
    |>Util.mostrar_mensaje()
  end
  defp multiplicacion(_,0), do: 0
  defp multiplicacion(a , b) when b > 0, do: a + multiplicacion(a, b - 1)

  defp generar_mensaje(producto) do
    "el producto de su multiplicacion fue #{producto}"
  end

end
Multiplicaciones.main()
