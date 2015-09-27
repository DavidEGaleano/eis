class Partida

	@eleccion_jugador_1
	@eleccion_jugador_2
	@resultado
	@rondas

	def initialize(rondas)
		@rondas = Array.new(rondas)
	end

	def jugador1usa!(jugada)
		@eleccion_jugador_1 = jugada
	end

	def jugador2usa!(jugada)
		@eleccion_jugador_2 = jugada
	end

	def evaluar!
		@resultado = @eleccion_jugador_1.contra(@eleccion_jugador_2)
	end

	def resultado_ronda(numero_ronda)
		@rondas[numero_ronda]
	end

	def jugar_ronda(numero_ronda)
		self.evaluar!
		case @resultado
			when "gana"
				@rondas[numero_ronda] = "jugador1gana"
			when "pierde"
				@rondas[numero_ronda] = "jugador2gana"
		end

		self.resultado_ronda(numero_ronda)
	end

end