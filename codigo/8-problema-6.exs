defmodule Descuento do
  def main do
    "Por favor, ingresa tu tiempo de antigüedad como cliente (en años): "
    |> Util.ingresar(:entero)
    |> calcular_porcentaje_descuento()
    |> generar_mensaje()
    |> Util.mostrar_mensaje()
  end

  """
  defp calcular_porcentaje_descuento(antiguedad) do
    if antiguedad < 1 do
      0.0
    else
      if antiguedad <= 2 do
        0.10
      else
        if antiguedad <= 6 do
          0.14
        else
          0.17
        end
      end
    end
  end
"""

"""
  defp calcular_porcentaje_descuento(antiguedad) when antiguedad < 1, do: 0
  defp calcular_porcentaje_descuento(antiguedad) when antiguedad <= 2, do: 10
  defp calcular_porcentaje_descuento(antiguedad) when antiguedad <= 6, do: 14
  defp calcular_porcentaje_descuento(_), do: 17
"""
  defp calcular_porcentaje_descuento(antiguedad) do
    cond do
      antiguedad < 1 -> 0
      antiguedad <= 2 -> 10
      antiguedad <= 6 -> 14
      true -> 17
    end
  end
  defp generar_mensaje(porcentaje) do
    "Tu porcentaje de descuento es: #{porcentaje}%"
  end
end

Descuento.main()
