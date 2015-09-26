class Tijera

	def contra(oponente)
		oponente.resultado(self)
	end

	def soy
		"tijera"
	end

	def resultado(oponente)
		case oponente.soy
			when "tijera"
				"empate"
			when "piedra"
				"gana"
			when "papel"
				"pierde"
		end
	end	
end