defmodule ParImpar do
  def determinar_par1?(0), do: true
  def determinar_par1?(1), do: false
  def determinar_par1?(n), do: determinar_par1?(n - 2)

  def determinar_par2?(n), do: determinar_par2?(0, n)
  def determinar_par2?(m, n) when m * 2 == n, do: true
  def determinar_par2?(m, n) when m * 2 > n, do: false
  def determinar_par2?(m, n), do: determinar_par2?(m + 1, n)

  def determinar_par3?(0), do: true
  def determinar_par3?(n), do: determinar_impar3?(n - 1)
  def determinar_impar3?(0), do: false
  def determinar_impar3?(n), do: determinar_par3?(n - 1)

  def determinar_par4?(n) when rem(n, 2) == 0, do: true
  def determinar_par4?(_), do: false
end

# Ejecutar benchmark
tuplas = {
  {ParImpar, :determinar_par1?, []},
  {ParImpar, :determinar_par2?, []},
  {ParImpar, :determinar_par3?, []},
  {ParImpar, :determinar_par4?, []}
}

valores = [10_000, 100_000, 1_000_000, 10_000_000, 100_000_000]

BenchMark.mostrar_tabla_csv(tuplas, valores)
