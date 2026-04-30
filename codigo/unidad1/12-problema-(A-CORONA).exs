defmodule Corona do
  def main do
    genero = Util.ingresar("Por favor, ingrese su género\n\t1-masculino\n\t2-femenino\nIngrese aqui ", :entero)
    compra = Util.ingresar("Por favor, ingrese su producto\n\t1-Baldosa\n\t2-Lavamanos\n\totro\nIngrese aqui: ", :entero)
    cantidad = Util.ingresar("Por favor, ingrese su cantidad del producto: ", :entero)
    obtener_boleto(genero, compra, cantidad)
    |> generar_mensaje()
    |> Util.mostrar_mensaje()
  end

  defp obtener_boleto(genero, compra, cantidad) do
    cond do
      genero == 1 and compra == 2 and cantidad >= 1 -> "Felicidades, has ganado un boleto"
      genero == 2 and compra == 1 and cantidad >= 2 -> "Felicidades, has ganado un boleto"
      (genero == 1 or genero == 2) and
      (compra == 1 or compra == 2 or compra == 3) and
      cantidad >= 1 -> "Lo sentimos, no ubtuviste boleto en esta ocasión"

      true ->
        "Entrada no válida. Por favor, ingresa un género, producto y cantidad válidos."
        |> Util.mostrar_error()
        main()
    end
  end

  defp generar_mensaje(resultado) do
    "ATENCION: #{resultado}"
  end

end
Corona.main()
