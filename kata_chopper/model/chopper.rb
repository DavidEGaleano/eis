class Chopper

	def initialize

	end

	def chop (valor,list)
		if list == []
		-1
		else
			list.drop(valor).length
		end
	end

end 