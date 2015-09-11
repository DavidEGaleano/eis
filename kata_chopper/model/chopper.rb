class Chopper

	def chop (valor,list)
		list.delete_at(valor)
		list.size() -1
	end

	def sum(list)
		if list == []
			'vacio'
		end

	end
end 