class Mono

	def contra(oponente)
		oponente.resultado(self)
	end

	def soy
		"mono"
	end

	def resultado(oponente)
		case oponente.soy
			when "mono"
				"empate"
			when "tijera"
				"gana"
			when "piedra"
				"empate"
			when "papel"
				"gana"
		end
	end	


end
