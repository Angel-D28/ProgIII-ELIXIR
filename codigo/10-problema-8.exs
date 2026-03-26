defmodule CalculoMesa do
  def main do
    "Por favor, ingrese el numero de personas que asistiran a la cena: "
    |> Util.ingresar(:entero)
    |> calcular_permutaciones_circulares()
    |> generar_mensaje()
    |> Util.mostrar_mensaje()
  end

  defp calcular_permutaciones_circulares(n) do
    (n - 1)
    |> calcular_factorial()
  end
  defp calcular_permutaciones_circulares(0), do: 0

  defp calcular_factorial(0), do: 1
  defp calcular_factorial(n), do: n * calcular_facto  rial(n - 1)

  defp generar_mensaje(maneras) do
    "El número de maneras en que los invitados pueden sentarse es: #{maneras}"
  end

end
CalculoMesa.main()
