class Building


  attr_reader :width, :length, :height
   def initialize(name, width, length, height)
      @name = name
      @widht = widht
      @length = length
      @height = height
   end

  def floor_area
    @widht * @length
  end

end
