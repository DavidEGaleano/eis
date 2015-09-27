class Papel

	def contra(oponente)
		oponente.resultado(self)
	end

	def soy
		"papel"
	end

	def resultado(oponente)
		case oponente.soy
			when "piedra"
				"pierde"
			when "papel"
				"empate"
		end
	end	

end