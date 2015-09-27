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
		end
	end	
end