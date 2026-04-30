defmodule BenchMark do
  def calcular_speedup(_,0), do: 0
  def calcular_speedup(tiempo1 , tiempo2), do: tiempo1 / tiempo2

  def determinar_tiempo_ejecucion({modulo, funcion, argumentos})do
    tiempo_inicial = System.monotonic_time()
    apply(modulo, funcion, argumentos)
    tiempo_final = System.monotonic_time()

    duracion=
      System.convert_time_unit(
        tiempo_final - tiempo_inicial,
        :native,
        :nanosecond
      )
      duracion
  end

  def generar_mensaje(tiempo1 , tiempo2) do
    speedup = calcular_speedup(tiempo1 , tiempo2) |> Float.round(2)

    "Tiempos: #{tiempo1} nanosegundos y #{tiempo2} nanosegundos." <>
    "El primer algoritmo es #{speedup} veces más rápido que el segundo."
  end

  def generar_mensaje_4_tiempos(tiempo1, tiempo2, tiempo3, tiempo4) do
    tiempos = [tiempo1, tiempo2, tiempo3, tiempo4]
    tiempo_minimo = Enum.min(tiempos)

    speedup1 = calcular_speedup(tiempo1, tiempo_minimo) |> Float.round(2)
    speedup2 = calcular_speedup(tiempo2, tiempo_minimo) |> Float.round(2)
    speedup3 = calcular_speedup(tiempo3, tiempo_minimo) |> Float.round(2)
    speedup4 = calcular_speedup(tiempo4, tiempo_minimo) |> Float.round(2)

    """
    ===== COMPARACIÓN DE 4 TIEMPOS DE EJECUCIÓN =====
    Algoritmo 1: #{tiempo1} nanosegundos (#{speedup1}x)
    Algoritmo 2: #{tiempo2} nanosegundos (#{speedup2}x)
    Algoritmo 3: #{tiempo3} nanosegundos (#{speedup3}x)
    Algoritmo 4: #{tiempo4} nanosegundos (#{speedup4}x)

    El algoritmo más rápido es: #{tiempo_minimo} nanosegundos
    """
  end

end
