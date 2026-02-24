defmodule CalculoMesa do
  def main do
    "Por favor, ingrese el numero de asientos en la mesa: "
    |> Util.ingresar(:entero)

    "Por favor, ingrese el numero de personas que asistiran a la cena: "
    |> Util.ingresar(:entero)
    |> calcular_maneras_sentarse(asientos)
    |> generar_mensaje()
    |> Util.mostrar_mensaje()
  end

  defp calcular_maneras_sentarse(asientos, n) do
    if n > asientos do
      "No hay suficientes asientos para los invitados."
    else
      if n == asientos do
      calcular_permutaciones_circulares(n)
        else
        "En proceso de cálculo..."
           end
        end
    end


  defp calcular_permutaciones_circulares(0), do: 0

  defp calcular_permutaciones_circulares(n) do
    (n - 1)
    |> calcular_factorial()
  end

  defp calcular_factorial(0), do: 1
  defp calcular_factorial(n), do: n * calcular_factorial(n - 1)

  defp generar_mensaje(maneras) do
    "El número de maneras en que los invitados pueden sentarse es: #{maneras}"
  end

end
CalculoMesa.main()
