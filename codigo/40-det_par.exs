defmodule ParImpar do
def main do
  valor = 200_000

  algoritmo1 = {ParImpar, :determinar_par1?, [valor]}
  algoritmo2 = {ParImpar, :determinar_par2?, [valor]}

  duracion = BenchMark.determinar_tiempo_ejecucion(algoritmo1)
  duracion2 = BenchMark.determinar_tiempo_ejecucion(algoritmo2)

  BenchMark.generar_mensaje(duracion , duracion2)
  |> Util.mostrar_mensaje_terminal()
end
  #Algoritmo 1
   def determinar_par1?(0), do: true
   def determinar_par1?(1), do: false
   def determinar_par1?(n), do: determinar_par1?(n - 2)

   #Algoritmo 2
    def determinar_par2?(n) , do: determinar_par2?(0 , n)
    def determinar_par2?(m,n) when m * 2 == n, do: true
    def determinar_par2?(m,n) when m * 2> n, do: false
    def determinar_par2?(m,n), do: determinar_par2?(m+1 , n)
end
ParImpar.main()
