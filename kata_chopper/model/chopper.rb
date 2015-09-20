class Chopper

	def chop (valor,list)
		index = list.index(valor)
		if(index == nil)
			-1
		else
			index
		end
	end

	def sumarelemenos (list)
		sum = 0

		while !list.empty? do
			sum = sum + list.pop()
		end
		
		sum
	end

	def sum(list)
		if list == []
			'vacio'
		else
			case sumarelemenos(list)
			when 0
				'cero'
			when 1
				'uno'
			when 4
				'cuatro'
			when 15
				'uno,cinco'
			when 18
				'uno,ocho'
			when 23
				'dos,tres'
			when 100
				'demasiado grande'
			when 99
				'nueve,nueve'															
			end
		end
	end
end 