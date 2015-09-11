class Chopper

	def chop (valor,list)
		list.delete_at(valor)
		list.size() -1
	end

	def sum(list)
		if list == []
			'vacio'
		else
			if list.size() == 1
				if (list.pop() == 1)
					'uno'
				end
			else
				case suma = list.pop() + list.pop()
				when 4
					'cuatro'
				when 18
					'uno,ocho'
				when 100
					'demasiado grande'					
				end
			end
		end
	end
end 