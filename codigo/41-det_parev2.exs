defmodule ParImpar do
def main do
  valor = 200_000

  algoritmo1 = {ParImpar, :determinar_par1?, [valor]}
  algoritmo2 = {ParImpar, :determinar_par2?, [valor]}
  algoritmo3 = {ParImpar, :determinar_par3?, [valor]}
  algoritmo4 = {ParImpar, :determinar_par4?, [valor]}

  duracion = BenchMark.determinar_tiempo_ejecucion(algoritmo1)
  duracion2 = BenchMark.determinar_tiempo_ejecucion(algoritmo2)
  duracion3 = BenchMark.determinar_tiempo_ejecucion(algoritmo3)
  duracion4 = BenchMark.determinar_tiempo_ejecucion(algoritmo4)

  BenchMark.generar_mensaje_4_tiempos(duracion, duracion2, duracion3, duracion4)
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

    #Algoritmo 3
    def determinar_par3?(0), do: true
    def determinar_par3?(n), do: determinar_impar3?(n-1)
    def determinar_impar3?(0), do: false
    def determinar_impar3?(n), do: determinar_par3?(n-1)

    #Algoritmo 4
    def determinar_par4?(n) when rem(n, 2) == 0, do: true
    def determinar_par4?(_), do: false
end
ParImpar.main()
