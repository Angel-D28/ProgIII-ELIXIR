defmodule ContarVocales do
  def main do
    cadena = Util.ingresar("ingrese una oracion o palabra: ", :texto)
    conteo = contarVocales(cadena)
    generar_mensaje(cadena , conteo)
    |>Util.mostrar_mensaje()
  end

  defp contarVocales(""), do: 0

  defp contarVocales(cadena) do
    primer_caracter = String.first(cadena)
    resto = String.slice(cadena, 1..-1//1)

    if es_vocal?(primer_caracter) do
      1 + contarVocales(resto)
    else
      contarVocales(resto)
    end
  end

  defp es_vocal?(c), do: c in["a" ,"e", "i" , "o" , "u", "A" ,"E", "I" , "O" , "U"]

  defp generar_mensaje(cadena, conteo) do
    "Hay #{conteo} Vocales en #{cadena} "
  end

end
ContarVocales.main()
