defmodule Estructuras do
    def main do
        es_mayor_de_edad?(%{edad: 17})
        |>generar_mensaje()
        |>Util.mostrar_mensaje
    end

    def es_mayor_de_edad?(%{edad: edad}) when edad >= 18, do: true
    def es_mayor_de_edad?(_), do: false

    def generar_mensaje(true), do: "Tiene permitido entrar"
    def generar_mensaje(false), do: "Permiso denegado"

end
Estructuras.main()
