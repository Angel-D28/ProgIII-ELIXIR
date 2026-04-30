defmodule Matematicas do
  def main do
    base = Util.ingresar("Ingresa el numero: " , :entero)
    potencia = Util.ingresar("Ingresa el numero a verificar como potencia: ", :entero)
    verificar_potencia(base , potencia)
    |>generar_mensaje()
    |>Util.mostrar_mensaje()
  end

  defp verificar_potencia(_ , 0), do: false
  defp verificar_potencia(a , n) when a == n, do: true
  defp verificar_potencia(a , n) when n > a, do: verificar_potencia(a , div(n , a) )
  defp verificar_potencia(_ , _), do: false



  defp generar_mensaje(valor) do
    if valor do
      "El numero es una potencia del numero ingresado"
    else
      "El numero no es una potencia del numero ingresado"
    end
  end
end

Matematicas.main()
