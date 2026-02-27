defmodule Hotel do
  def main do
    noches =
      Util.ingresar(
        "Por favor, ingrese el numero de noches que se quedara en el hotel: ",
        :entero
      )
    {tarifa_base,subtotal} = calcular_subtotal_por_noches(noches)

    tipo_cliente =
      Util.ingresar(
        "Por favor, ingrese el numero del tipo de cliente\n\t1-Frecuente\n\t2-Corporativo\n\t3-Ocasional\nIngrese aquí: ",
        :entero
      )
    porcentaje_descuento = calcular_descuento(tipo_cliente_a_atomo(tipo_cliente))

    temporada =
      Util.ingresar(
        "Por favor, ingrese el numero del tipo de temporada\n\t1-Baja\n\t2-Alta\nIngrese aquí: ",
        :entero
      )

    recargo =calcular_recargo(temporada)

    {subtotal, descuento_monto, recargo_monto, total} = calcular_costo_total(subtotal, porcentaje_descuento, recargo)

    generar_mensaje_tupla(tarifa_base, subtotal, descuento_monto, recargo_monto, total)
    |> Util.mostrar_mensaje()
  end

  defp calcular_subtotal_por_noches(noches) when noches >= 5, do: {85000, 85000 * noches}
  defp calcular_subtotal_por_noches(noches) when noches >= 3, do: {100000, 100000 * noches}
  defp calcular_subtotal_por_noches(noches) when noches > 0, do: {120000, 120000 * noches}
  defp calcular_subtotal_por_noches(_) do
  "El número de noches debe ser mayor a 0."
  |> Util.mostrar_error()
  "Por favor, ingrese el numero de noches que se quedara en el hotel: "
  |> Util.ingresar(:entero)
  |> calcular_subtotal_por_noches()
end


  # Pattern Matching con átomos
  defp calcular_descuento(:frecuente), do: 0.20
  defp calcular_descuento(:corporativo), do: 0.15
  defp calcular_descuento(_), do: 0.0


  # Convertir el número ingresado a átomo
  def tipo_cliente_a_atomo(1), do: :frecuente
  def tipo_cliente_a_atomo(2), do: :corporativo
  def tipo_cliente_a_atomo(3), do: :ocasional
  # valor por defecto
  def tipo_cliente_a_atomo(_) do
  "Numero de tipo de cliente no reconocido. Por favor, ingresa un número válido."
  |> Util.mostrar_error()

  "Por favor, ingrese el numero del tipo de cliente\n\t1-Frecuente\n\t2-Corporativo\n\t3-Ocasional\nIngrese aquí: "
  |> Util.ingresar(:entero)

  |> tipo_cliente_a_atomo()
  end

  defp calcular_recargo(temporada) do
    cond do
      temporada == 1 ->
        0.0

      temporada == 2 ->
        0.25

      true ->
        "Tipo de temporada no reconocido. Por favor, ingresa un tipo válido."
        |> Util.mostrar_error()

        Util.ingresar(
          "Por favor, ingrese el numero del tipo de temporada\n\t1-Baja\n\t2-Alta\nIngrese aquí: ",
          :entero
        )
        |> calcular_recargo()
    end
  end

  defp calcular_costo_total(subtotal, porcentaje_descuento, recargo) do
  descuento_monto = subtotal * porcentaje_descuento
  recargo_monto   = subtotal * recargo
  total           = subtotal - descuento_monto + recargo_monto

  #  Retornar tupla con todos los valores
  {subtotal, descuento_monto, recargo_monto, total}
end


  defp generar_mensaje_tupla(tarifa_base, subtotal, descuento_monto, recargo_monto, total) do
    """
    ============================================
           RESUMEN DE ESTADÍA - HOTEL
    ============================================
    Tarifa base por noche    : $#{fmt(tarifa_base)}
    Subtotal (sin ajustes)   : $#{fmt(subtotal)}
    Descuento aplicado       : -$#{fmt(descuento_monto)}
    Recargo temporada alta   : +$#{fmt(recargo_monto)}
    --------------------------------------------
    TOTAL A PAGAR            : $#{fmt(total)}
    ============================================
    """
  end

    # Formatea enteros y flotantes
  defp fmt(valor) when is_float(valor) do
    valor
    |> Float.round(1)
    |> :erlang.float_to_binary(decimals: 0)
  end
  defp fmt(valor), do: Integer.to_string(valor)
end
Hotel.main()
