defmodule EntradaEnteros do
  def main do
    valor_total = "Por favor, ingresa el valor total de la compra: "
    |> ingresar(:entero)

    valor_entregado = "Por favor, ingresa el valor entregado por el cliente: "
    |> ingresar(:entero)

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

  defp ingresar(mensaje, :entero) do
    mensaje
    |> IO.gets()
    |> String.trim()
    |> String.to_integer()
  end
end

EntradaEnteros.main()
