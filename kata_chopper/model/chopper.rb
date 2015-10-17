require_relative '../model/decoder'

class Chopper

  attr_reader :decoder

  def initialize
    @decoder = Decoder.new
  end
  
  def chop(index,list)
    if(list.empty?)
      -1
    else
      list.index(index)
    end
  end

  def sum(list)
    if(list.empty?)
      'vacio'
    else
      @result = self.add(list)
      @result = @result.to_s.split('')
      @decoder.get_result_in_words(@result)
    end
  end

  def add(list)
    @result = 0
    list.each{|x| @result = @result + x}
    @result
  end

end