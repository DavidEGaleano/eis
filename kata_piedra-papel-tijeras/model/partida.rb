class Partida

@eleccion_jugador_1
@eleccion_jugador_2
@resultado
@rondas
@nro_de_ronda

  def initialize(rondas)
    @rondas = Array.new(rondas)
  end

  def jugador1usa!(jugada)
    @eleccion_jugador_1 = jugada
  end

  def jugador2usa!(jugada)
    @eleccion_jugador_2 = jugada
  end

  def evaluar!
    @resultado = @eleccion_jugador_1.contra(@eleccion_jugador_2)
  end

  def resultado_ronda(numero_ronda)
    @rondas[numero_ronda]
  end

  def jugar_ronda(numero_ronda)
    self.evaluar!
    case @resultado
      when "gana"
        @rondas[numero_ronda] = "jugador1gana"
      when "pierde"
        @rondas[numero_ronda] = "jugador2gana"
      when "empate"
        @rondas[numero_ronda] = "empate"
    end
    @nro_de_ronda = numero_ronda + 1
    self.resultado_ronda(numero_ronda)
  end

  def resultado
    @contador_j1 = 0
    @contador_j2 = 0
    @resultado = "sin definir"

    @rondas.each do |element|
      if element == "jugador1gana"
          @contador_j1 += 1
        elsif element == "jugador2gana"
          @contador_j2 += 1
      end
    end

    if @contador_j2 > @contador_j1 && @nro_de_ronda == 3
      @resultado = "jugador2gana"
    elsif @contador_j1 > @contador_j2 && @nro_de_ronda == 3
      @resultado = "jugador1gana"
    end

    if @contador_j1 == 2
      @resultado = "jugador1gana"
    elsif @contador_j2 == 2
      @resultado = "jugador2gana"
    end

    if @contador_j1 == @contador_j2 && @nro_de_ronda == 3
      @resultado = "empate"
    end
			
    @resultado
  end
end