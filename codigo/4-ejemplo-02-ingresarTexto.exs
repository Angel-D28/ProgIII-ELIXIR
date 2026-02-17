defmodule EntradaDatos do
  def main do
    "Por favor, ingresa nombre del empleado: "
    |>Util.ingresar(:texto)
    |>generar_mensaje()
    |>Util.mostrar_mensaje()
  end
"""
  defp ingresar_texto(mensaje) do
    mensaje
    |> IO.gets()
    |> String.trim()
  end
"""
  defp generar_mensaje(nombreEmpleado) do
    "Bienvenido #{nombreEmpleado} a la empresa ONCE LTDA"
  end
end
  EntradaDatos.main()
