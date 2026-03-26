defmodule Map do
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

end
Map.main()
