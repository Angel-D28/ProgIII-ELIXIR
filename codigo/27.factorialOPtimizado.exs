defmodule FactorialOptimizado do
  def main do
    "Ingrese un numero :"
    |>Util.ingresar(:entero)
    |>factorial()
    |>generar_mensaje()
    |>Util.mostrar_mensaje()
  end

  def factorial(n , acum \\1)
  def factorial(0 , acum ), do: acum
  def factorial(n, acum), do: factorial(n-1, n * acum)

  defp generar_mensaje(numero) do
    "el resultado es #{numero}"
  end
end
FactorialOptimizado.main()
