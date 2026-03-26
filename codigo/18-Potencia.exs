defmodule Matematicas do
  def main do
    base = Util.ingresar("Ingresa la base: " , :entero)
    exponente = Util.ingresar("Ingresa la potencia: ", :entero)
    potencia(base , exponente)
    |>generar_mensaje()
    |>Util.mostrar_mensaje()
  end
  defp potencia(_ , 0), do: 1
  defp potencia(a , n) when n > 0, do: a * potencia(a , n - 1)

  defp generar_mensaje(valor) do
    "El valor final de su potencia es #{valor}"
  end
end
Matematicas.main()
