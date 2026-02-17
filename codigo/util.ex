
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


end
