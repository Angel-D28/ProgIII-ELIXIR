defmodule FactorialOptimizado do
  def main do
    "Ingrese un numero :"
    |>Util.ingresar(:entero)
    |>factorial()
    |>generar_mensaje()
    |>Util.mostrar_mensaje()
  end
  def factorial(n), do: factorial_tail(n , 1)

  def factorial_tail(n , acum ) when n > 0 do
    factorial_tail(n - 1 , n * acum)
  end

  defp generar_mensaje(numero) do
    "el resultado es #{numero}"
  end
end
FactorialOptimizado.main()
