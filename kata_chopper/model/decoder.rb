class Decoder
  
  attr_reader :number_to_word_table

  def initialize
    @number_to_word_table = Hash.new (String::new)
    @number_to_word_table.store("1", "uno")
  end

  def get_result_in_words(list)
    @number_to_word_table[list.pop]
  end

end