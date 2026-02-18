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
  "El valor del producto es: #{valor_producto}\nEl valor del descuento es: #{valor_descuento}\nEl valor final a pagar es: #{valor_final}"
end

end
EntradaReales.main()
