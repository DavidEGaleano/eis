class Decoder
  
  attr_reader :number_to_word_table

  def initialize
    @number_to_word_table = Hash.new (String::new)
    @number_to_word_table.store("1", "uno")
    @number_to_word_table.store("2", "dos")
    @number_to_word_table.store("3", "tres")
    @number_to_word_table.store("4", "cuatro")
  end

  def get_result_in_words(list)
    @number_to_word_table[list.pop]
  end

end