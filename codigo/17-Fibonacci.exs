defmodule Fibonacci do
  def main do
    "Ingrese un valor mayor igual a cero: "
    |> Util.ingresar(:entero)
    |> determinar_termino_fibonacci()
    |> generar_mensaje()
    |> Util.mostrar_mensaje_terminal()
  end

  """
    defp determinar_termino_fibonacci(0), do: 0
    defp determinar_termino_fibonacci(1), do: 1
    defp determinar_termino_fibonacci(n), do: determinar_termino_fibonacci(n-2) + determinar_termino_fibonacci(n-1)
  """

  defp determinar_termino_fibonacci(n) do
    determinar_termino_fibonacci(n, 1, 0)
  end

  defp determinar_termino_fibonacci(0, _, _), do: 0
  defp determinar_termino_fibonacci(1, b, _), do: b

  defp determinar_termino_fibonacci(n, b, a) do
    determinar_termino_fibonacci(n - 1, b + a, b)
  end

  defp generar_mensaje(n), do: "El termino Fibonacci es #{n}"
end

Fibonacci.main()
