defmodule Colecciones do
  def main do
    enum([10,40,25,8,5,12,35,21,11,8,90])
    |>Util.mostrar_mensaje_listas()
  end
  def enum(list) do
    Enum.filter(list, fn x -> x>10 end)
  end
end
Colecciones.main()
