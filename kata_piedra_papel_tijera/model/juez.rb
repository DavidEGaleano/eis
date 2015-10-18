class Juez
   
  attr_reader :victorias_p1, :victorias_p2, :tabla_de_resultados, :rondas_jugadas

  def initialize
    @victorias_p1 = 0
    @victorias_p2 = 0
    @rondas_jugadas = []
  end

  def evaluar(una_ronda)
    @rondas_jugadas[@rondas_jugadas.size] = una_ronda
    self.definir_victoria(una_ronda)
  end 

  def definir_victoria(una_ronda)
    
    if(una_ronda.dar_resultado == Gana)
      victorias_p1 = victorias_p1 + 1
    end

    if(una_ronda.dar_resultado == Pierde)
      victorias_p2 = victorias_p2 + 1
    end
    
    if @victorias_p2 > @victorias_p1 && @rondas_jugadas.size  == 3
      @resultado = "jugador2gana"
    elsif @victorias_p1 > @victorias_p2 && @rondas_jugadas.size  == 3
      @resultado = "jugador1gana"
    end

    if @victorias_p1 == 2
      @resultado = "jugador1gana"
    elsif @victorias_p2 == 2
      @resultado = "jugador2gana"
    end

    if @victorias_p1 == @victorias_p2 && @rondas_jugadas.size == 3
      @resultado = "empate"
    end

    "Juego sin definir"

  end

end