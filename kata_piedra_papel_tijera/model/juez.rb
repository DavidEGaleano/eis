class Juez
   attr_reader :victorias_p1, :victorias_p2, :tabla_de_resultados, :rondas_jugadas

  def initialize
    @victorias_p1 = 0
    @victorias_p2 = 0
    @rondas_jugadas = 0
    @tabla_resultados = Hash.new (String::new)
    
    @tabla_resultados.store("1,1", "empate")
    @tabla_resultados.store("0,0", "empate")
    @tabla_resultados.store("1,0", "jugador 1 gana")
    @tabla_resultados.store("2,1", "jugador 1 gana")
    @tabla_resultados.store("2,0", "jugador 1 gana")
    @tabla_resultados.store("0,1", "jugador 2 gana")
    @tabla_resultados.store("1,2", "jugador 2 gana")
    @tabla_resultados.store("0,2", "jugador 2 gana")

  end

  def evaluar!(una_ronda)
    @rondas_jugadas = @rondas_jugadas+1
    self.definir_victoria!(una_ronda)
  end 

  def definir_victoria!(una_ronda)
    
    if(una_ronda.dar_resultado.dar_nombre == "gana")
      @victorias_p1 = @victorias_p1+1
    end

    if(una_ronda.dar_resultado.dar_nombre == "pierde")
      @victorias_p2 = @victorias_p2+1
    end

    @tabla_resultados[@victorias_p1.to_s+","+@victorias_p2.to_s]

  end

end