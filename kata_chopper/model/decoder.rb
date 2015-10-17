class Decoder
  
  attr_reader :number_to_word_table

  def initialize
    @number_to_word_table = Hash.new (String::new)
    @number_to_word_table.store("1", "uno")
    @number_to_word_table.store("2", "dos")
    @number_to_word_table.store("3", "tres")
    @number_to_word_table.store("4", "cuatro")
    @number_to_word_table.store("5", "cinco")
    @number_to_word_table.store("6", "seis")
    @number_to_word_table.store("7", "siete")
    @number_to_word_table.store("8", "ocho")
    @number_to_word_table.store("9", "nueve")
    @number_to_word_table.store("0", "cero")
  end

  def get_result_in_words(list)
  	if(list.length == 1)
      @number_to_word_table[list.pop]
    else
      if(list.length == 2)
        @value = ''
        list.each{|x| @value << @number_to_word_table[x] + ','}
        @value.chop
      else
        'demasiado grande'
      end
    end
  end

end