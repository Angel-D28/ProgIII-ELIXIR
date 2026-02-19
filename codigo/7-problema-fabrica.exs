defmodule Fabrica do
  @creation_year 1991
  def main do
   "Por favor, ingresa la cédula del cliente: "
    |> Util.ingresar(:entero)
    |> hay_promocion?(@creation_year)
    |> generar_mensaje()
    |> Util.mostrar_mensaje()
  end
  """
  defp hay_promocion?(numero_cedula, creation_year) do
    if rem(numero_cedula, creation_year) == 0 do
      true
    else
      false
    end
  end
"""
  defp hay_promocion?(numero_cedula, creation_year)
  when rem(numero_cedula, creation_year) == 0, do: true

  defp hay_promocion?(_,_), do: false
"""
  defp generar_mensaje(hay_promocion) do
    if hay_promocion do
      "¡Felicidades! Tienes una promoción especial."
    else
      "Lo sentimos, no tienes una promoción en esta ocasión."
    end
  end
"""
  defp generar_mensaje(true), do: "¡Felicidades! Tienes una promoción especial."
  defp generar_mensaje(false), do: "Lo sentimos, no tienes una promoción en esta ocasión."
end
Fabrica.main()
