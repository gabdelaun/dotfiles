class car
#  attr_reader : color
# getters
#   def color
#     return @color
#   end

#  attr_writer : color
#setters
  # def color=(new_color)
  #   @color = new_color
  # end

  attr_accessor: color
# = Attr_reader & attr_writer

  def initialize(color)
    @engine_started = false
    @color = color
    @kms = 0
  end

  def move
    @kms += 10
  end

  def kilometers
    return @kms
  end

  def engine_started?
    return @engine_started
  end

  def start_the_engine
    start_petrol_pump

    @engine_started = true
  end

private

def start_petrol_pump
  puts "the petrol pump has been started"
end

end
