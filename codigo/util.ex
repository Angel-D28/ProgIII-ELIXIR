
defmodule Util do
  @moduledoc """
  modulo con funciones que se reutilizan
  - autor: Angel David Diaz Pinilla
  - fecha: 2026-02-12
  - licencia: GNU GPL V3
  """

  @doc"""
Funcion para mostrar un mensaje en pantalla usando un script de Python
## Parámetro
- mensaje: texto que se le presenta al usuario
## Ejemplo
- iex> Util.mostrar_mensaje("Hola, este es un mensaje de prueba")

o puede usar

"Hola mundo"
|> Util.mostrar_mensaje()

"""
  def mostrar_mensaje(mensaje) do
  System.cmd("python3", ["mostrar_dialogo.py", mensaje])
  end

  @doc"""
Funcion para ingresar una cadena de texto desde consola
## Parámetro
- mensaje: Espaciado donde el usuario ingresa el texto
## Ejemplo
- iex> Util.ingresar_texto("Por favor, ingresa el texto: ")

o puede usar

"Por favor, ingresa el texto: "
|> Util.ingresar_texto()

"""
  def ingresar(mensaje, :texto) do
  mensaje
  |> IO.gets()
  |> String.trim()
  end

def ingresar(mensaje, :entero), do: ingresar(mensaje, &String.to_integer/1, :entero)

def ingresar(mensaje, :real), do: ingresar(mensaje, &String.to_float/1, :real)

  defp ingresar(mensaje, funcion_conversion, tipo_dato) do
    try do
      mensaje
      |> ingresar(:texto)
      |> funcion_conversion.()
    rescue
      ArgumentError ->
        "Entrada no válida. Por favor, ingresa un número #{tipo_dato}."
        |> mostrar_error()
        ingresar(mensaje, tipo_dato)
    end
  end

  def mostrar_error(mensaje) do
    System.cmd("python3", ["mostrar_dialogo_error.py", mensaje])
  end

  def mostrar_error2(mensaje) do
    IO.puts(:standard_error, mensaje)
  end

  """
    def ingresar(mensaje, :entero) do
    try do
    mensaje
    |> Util.ingresar(:texto)
    |> String.to_integer()
    rescue
      ArgumentError ->
        "Entrada no válida. Por favor, ingresa un número entero."
        |>mostrar_error2()
        ingresar(mensaje, :entero)
    end
  end
  def ingresar(mensaje, :real) do
  try do
    mensaje
    |> Util.ingresar(:texto)
    |> String.to_float()
  rescue
    ArgumentError ->
      "Entrada no válida. Por favor, ingresa un número real."
      |> mostrar_error()
      ingresar(mensaje, :real)
  end
end
"""

end
