defmodule EntradaReales do
  def main do
    valor_producto = "Por favor, ingresa el valor del producto: "
    |> Util.ingresar(:entero)

    porcentaje_descuento = "Por favor, ingresa el valor del descuento: "
    |> Util.ingresar(:real)

    valor_descuento = calcular_descuento(valor_producto, porcentaje_descuento)
    valor_final = calcular_valor_final(valor_producto, valor_descuento)

    generar_mensaje(valor_final, valor_descuento, valor_producto)
    |>Util.mostrar_mensaje()
  end
  def calcular_descuento(valor_producto, porcentaje_descuento) do
    valor_producto * porcentaje_descuento
  end

  def calcular_valor_final(valor_producto, valor_descuento) do
    valor_producto - valor_descuento
  end
  defp generar_mensaje(valor_final, valor_descuento, valor_producto) do
    final = Float.round(valor_final, 1)
    final_binary = :erlang.float_to_binary(final, decimals: 1)
    descuento = valor_descuento |> Float.round(1)
    descuento_binary = :erlang.float_to_binary(descuento, decimals: 1)
    "El valor del producto es: #{valor_producto}\nEl valor del descuento es: #{descuento_binary}\nEl valor final a pagar es: #{final_binary}"
  end

end
EntradaReales.main()
