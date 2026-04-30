defmodule Perfectos do
  def main do
    numero = Util.ingresar("Ingrese un numero para determinar si es perfecto: ",:entero)
    determinar_divisores(numero)
    |>es_perfecto(numero)
    |>generar_mensaje()
    |>Util.mostrar_mensaje()
  end

  defp determinar_divisores(n) when n == 0 , do: []
  defp determinar_divisores(n) do
    Enum.filter(1..(n-1), fn x -> rem(n, x) == 0 end)
  end

  defp es_perfecto(divisores, numero), do: es_perfecto?(divisores, numero, 0)

  defp es_perfecto?([], numero, suma), do: suma == numero
  defp es_perfecto?([head | tail], numero, suma) do
    es_perfecto?(tail, numero, suma + head)
  end

  defp generar_mensaje(es_perfecto) do
    if es_perfecto do
      "El numero es perfecto"
    else
      "El numero no es perfecto"
    end
  end
end
Perfectos.main()
