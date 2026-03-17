defmodule Cadenas do
  def main do
    palabra = Util.ingresar("ingrese la palabra que quiere invertir: ", :texto)
    palabraInvertida = invertir(palabra)
    generar_mensaje(palabra, palabraInvertida)
    |>Util.mostrar_mensaje()
  end

  defp invertir(""), do: ""
  defp invertir(cadena) do
    ultimo = String.last(cadena)
    resto = String.slice(cadena, 0..-2//1)

    ultimo <> invertir(resto)
  end

  defp generar_mensaje(palabra , palabraInvertida) do
    "La palabra es = #{palabra} \nLa palabra invertida es = #{palabraInvertida}"
  end
end
Cadenas.main()
