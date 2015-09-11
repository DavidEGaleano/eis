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
			end
		end
	end
end 