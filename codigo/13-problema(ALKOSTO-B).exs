defmodule Alkosto do
  def main do
    "Por favor, ingrese la marca del televisor que compro\n\t1-Kalley\n\t2-Samsung\n\t3-Otra marca\nIngrese aqui: "
    |> Util.ingresar(:entero)
    |> obtener_descuento()
    |> generar_mensaje()
    |> Util.mostrar_mensaje()
  end

  defp obtener_descuento(marca) do
    case marca do
      1 -> 5
      2 -> 7
      3 ->
        "ingrese el precio del televisor: "
        |> Util.ingresar(:entero)
        |>validar_precio()

      _ ->
        "Entrada no válida. Por favor, ingresa una marca válida."
        |> Util.mostrar_error()
        main()
    end
  end

  defp validar_precio(precio) when precio >= 3000000, do: 10
  defp validar_precio(_), do: 0

  defp generar_mensaje(descuento) do
    "Tu porcentaje de descuento es: #{descuento}%"
  end

end
Alkosto.main()
