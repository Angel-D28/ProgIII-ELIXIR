defmodule DescuentoBolsas do
  def main do
    "Por favor, ingrese que tipo de bolsa (biodegradable , plastica, reutilizable, ninguno): "
    |> Util.ingresar(:texto)
    |> calcular_descuento()
    |> generar_mensaje()
    |> Util.mostrar_mensaje()
  end

  defp calcular_descuento(bolsa) do
    tipo_bolsa = String.downcase(bolsa)

    case tipo_bolsa do
      "biodegradable" ->
        12

      "plastica" ->
        5

      "reutilizable" ->
        17

      "ninguno" ->
        0

      _ ->
        "Tipo de bolsa no reconocido. Por favor, ingresa un tipo válido."
        |> Util.mostrar_error()

        "Por favor, ingresa que tipo de bolsa (biodegradable , plastica, reutilizable): "
        |> Util.ingresar(:texto)
        |> calcular_descuento()
    end
  end

  defp generar_mensaje(descuento) do
    "Tu porcentaje de descuento es: #{descuento}%"
  end
end

DescuentoBolsas.main()
