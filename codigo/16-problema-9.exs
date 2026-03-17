defmodule ParesSinModulo do
  def main do
    "ingrese un numero: "
    |>Util.ingresar(:entero)
    |>determinar_par?()
    |>generar_mensaje()
    |>Util.mostrar_mensaje()
  end
defp determinar_par?(n), do: determinar_par?(0 , n)

defp determinar_par?(m,n) when m * 2 == n, do: true
defp determinar_par?(m,n) when m * 2> n, do: false
defp determinar_par?(m,n), do: determinar_par?(m+1 , n)

defp generar_mensaje(true), do: "Es par"
defp generar_mensaje(false), do: "Es Impar"

end
 ParesSinModulo.main()
