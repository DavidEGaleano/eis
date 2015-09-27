class Tijera

	def contra(oponente)
		oponente.resultado(self)
	end

	def soy
		"tijera"
	end

	def resultado(oponente)
		case oponente.soy
			when "papel"
				"pierde"
			when "piedra"
				"gana"
			when "tijera"
				"empate"
		end
	end	
end