class Papel

	def contra(oponente)
		oponente.resultado(self)
	end

	def soy
		"papel"
	end

	def resultado(oponente)
		case oponente.soy
			when "papel"
				"empate"
			when "tijera"
				"gana"
			when "piedra"
				"pierde"
			when "mono"
				"gana"
		end
	end	

end