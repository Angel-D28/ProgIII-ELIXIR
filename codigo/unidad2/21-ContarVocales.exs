defmodule ContarVocales do
  def main do
    cadena = Util.ingresar("ingrese una oracion o palabra: ", :texto)
    conteo = contar_vocales(cadena)
    generar_mensaje(cadena , conteo)
    |>Util.mostrar_mensaje()
  end

  defp contar_vocales(""), do: 0

  defp contar_vocales(cadena) do
    primer_caracter = String.first(cadena)
    resto = String.slice(cadena, 1..-1//1)

    if es_vocal?(primer_caracter) do
      1 + contar_vocales(resto)
    else
      contar_vocales(resto)
    end
  end

  defp es_vocal?(c), do: c in["a" ,"e", "i" , "o" , "u", "A" ,"E", "I" , "O" , "U"]

  defp generar_mensaje(cadena, conteo) do
    "Hay #{conteo} Vocales en #{cadena} "
  end

end
ContarVocales.main()
