class Piedra

  def contra(oponente)
    oponente.resultado(self)
  end

  def soy
    "piedra"
  end

  def resultado(oponente)
    case oponente.soy
      when "papel" 
         "gana"
      when "tijera"
        "pierde"
      when "piedra"
        "empate"
      when "mono"
        "empate"
    end
  end	
end