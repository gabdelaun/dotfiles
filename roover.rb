class Roover
# Turn Method (L + R)
# Move Method
attr_reader :x_position, :y_position, :direction

  HEADINGS = ['N', 'E', 'S', 'W']
  def initialize(x_position, y_position, direction)
    @x_position = x_position
    @y_position = y_position
    @direction = direction
  end

  def turn_left
    @direction = HEADINGS[HEADINGS.index(@direction) -1]
  end
  def turn_right
      @direction = HEADINGS[HEADINGS.index(@direction) -3]
    end
  def move
    case @direction
      when 'N'
        @y_position += 1
      when 'S'
        @y_position -= 1
      when 'E'
        @x_position += 1
      when 'W'
        @x_position -= 1
    end
  end
end

my_roover_on_mars = Roover.new(1, 2, 'N')
my_roover_on_mars2 = Roover.new(1, 2, 'E')

#LMLMLMLMM
my_roover_on_mars.turn_left
my_roover_on_mars.move
my_roover_on_mars.turn_left
my_roover_on_mars.move
my_roover_on_mars.turn_left
my_roover_on_mars.move
my_roover_on_mars.turn_left
my_roover_on_mars.move
my_roover_on_mars.move

print my_roover_on_mars.x_position
print my_roover_on_mars.y_position
print my_roover_on_mars.direction
puts " "

#MMRMMRMRRM
my_roover_on_mars2.move
my_roover_on_mars2.move
my_roover_on_mars2.turn_right
my_roover_on_mars2.move
my_roover_on_mars2.move
my_roover_on_mars2.turn_right
my_roover_on_mars2.move
my_roover_on_mars2.turn_right
my_roover_on_mars2.turn_right
my_roover_on_mars2.move

print my_roover_on_mars2.x_position
print my_roover_on_mars2.y_position
print my_roover_on_mars2.direction

