class Mono

  def contra(oponente)
    oponente.resultado(self)
  end

  def soy
    "mono"
  end

  def resultado(oponente)
    case oponente.soy
      when "papel"
        "pierde"
	  when "mono"
	    "empate"
	  when "piedra"
	    "empate"
	  when "tijera"
	    "gana"
	  end
	end	
end
