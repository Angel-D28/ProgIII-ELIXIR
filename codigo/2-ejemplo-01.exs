#Version 1
IO.puts("Bienvenido a la empresa Once LTDA")
#version 2
"Bienvenido a la empresa Once LTDA"
|>IO.puts()
#version 3
defmodule Mensaje do
  def main do
    "Bienvenido a la empresa ONCE LTDA"
    |> IO.puts()
  end
end
Mensaje.main()

#version 4
defmodule Mensaje2 do
  def main2 do
    "Bienvenido a la empresa ONCE LTDA"
    |> mostrar_mensaje()
  end
  defp mostrar_mensaje(mensaje) do
  mensaje
  |>IO.puts()
  end
end
Mensaje2.main2()
