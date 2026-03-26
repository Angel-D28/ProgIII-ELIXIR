defmodule Etapa_desarrollo do
  def main do
    "Por favor, ingrese la edad del niño entre 0 y 12 años: "
    |> Util.ingresar(:entero)
    |> determinar_etapa_desarrollo()
    |> generar_mensaje()
    |> Util.mostrar_mensaje()
  end

  defp determinar_etapa_desarrollo(edad) do
    cond do
      edad > 5 and edad <= 12 ->
        "Consolida habilidades sociales y emocionales"

      edad > 2 and edad <= 5 ->
        "Inicia el desarrollo de habilidades sociales y emocionales"

      edad > 1 and edad <= 2 ->
        "Explora su entorno camina y utiliza objetos"

      edad >= 0 and edad <= 1 ->
        "Crecimiento rapido y una gran plasticidad cerebral"

      true ->
        "Edad no válida. Por favor, ingrese una edad entre 0 y 12 años."
        |> Util.mostrar_error()

        main()
    end
  end

  defp generar_mensaje(etapa) do
    "La etapa de desarrollo del niño es: #{etapa}"
  end
end

Etapa_desarrollo.main()
