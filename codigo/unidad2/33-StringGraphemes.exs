defmodule StringGraphemes do
  def main do
    "ingrese una oracion o palabra: "
    |>Util.ingresar(:texto)
    |>String.graphemes()
    |>contar_vocales()
    |>generar_mensaje()
    |>Util.mostrar_mensaje()
  end

  defp contar_vocales([]), do: 0

  defp contar_vocales([head | tail]) do
    if es_vocal?(head) do
      1 + contar_vocales(tail)
    else
      contar_vocales(tail)
    end
  end

  defp es_vocal?(c), do: c in["a" ,"e", "i" , "o" , "u", "A" ,"E", "I" , "O" , "U"]

  defp generar_mensaje(conteo) do
    "Hay #{conteo} Vocales"
  end

end
StringGraphemes.main()
