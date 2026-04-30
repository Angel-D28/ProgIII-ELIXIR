defmodule Proceso do
  @cantidad_procesos_internos 5

  def main do
    BenchMark.determinar_tiempo_ejecucion({Proceso, :simulacion, [@cantidad_procesos_internos]})
    |> generar_mensaje()
    |> Util.mostrar_mensaje_terminal()
  end

  def simulacion(cantidad_procesos_internos)do
    datos_prueba = [{"A", 2500}, {"B", 1500}, {"\t\tC", 500}, {"\t\t\tD", 3500}]

    Enum.each(datos_prueba, fn valor -> simulando_proceso(valor, cantidad_procesos_internos) end)
  end

  def simulando_proceso({mensaje, demora}, cantidad_procesos_internos)do
    IO.puts("#{mensaje} -> (inicio)")

    Enum.each(1..cantidad_procesos_internos, fn i ->
      :timer.sleep(demora)
      IO.puts("\t#{mensaje}-#{i}")
    end)
    IO.puts("#{mensaje} -> (finalizada)")
  end

  def generar_mensaje(tiempo) do
    tiempo_seg = tiempo/1000000000
    |>Float.round(2)
    "\nEl tiempo de ejeucion es de #{tiempo_seg} Segundos"
  end
end
Proceso.main()
