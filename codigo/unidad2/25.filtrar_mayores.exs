defmodule Listas do
  def main do
    limite = Util.ingresar("ingrese un limite: " , :entero)
    cantidad_elementos = Util.ingresar("ingrese la cantidad de elementos que quiere agregar: ", :entero)
    lista = listarElementos(cantidad_elementos)
    filtrar_mayores(lista, limite)
    |> mostrar_mensaje()
  end

  defp listarElementos(0), do: []
  defp listarElementos(n) when n > 0 do
    numeroEnLista = Util.ingresar("ingrese el numero : ", :entero)
    [numeroEnLista | listarElementos(n - 1)]
  end

  def filtrar_mayores([],_limite), do: []


  def filtrar_mayores([head | tail] , limite) when head > limite do
    [head | filtrar_mayores(tail , limite)]
  end

  def filtrar_mayores([_head | tail] , limite) do
      filtrar_mayores(tail, limite)
  end

  defp mostrar_mensaje(lista_limite) do
    IO.puts("Los numeros mayores al limite son: ")
    IO.inspect( lista_limite)
  end

end
Listas.main()
