defmodule EntradaEnteros do
  def main do
    valor_total = "Por favor, ingresa el valor total de la compra: "
    |> Util.ingresar(:entero)

    valor_entregado = "Por favor, ingresa el valor entregado por el cliente: "
    |> Util.ingresar(:entero)

    calcular_cambio(valor_total, valor_entregado)
    |>generar_mensaje()
    |>Util.mostrar_mensaje()
  end
  def calcular_cambio(valor_total, valor_entregado) do
    valor_entregado - valor_total
  end

  defp generar_mensaje(cambio) do
    "El cambio a entregar es: #{cambio}"
  end
end

EntradaEnteros.main()
