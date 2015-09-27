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
		end
	end	


end
