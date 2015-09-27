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
		end
	end	

end