require_relative 'rover'

class RoverPath
  def send_commands(rover, path)
    path.chars.each do |command|
      case command
      when "L"
        @rover.turn_left
      when "R"
        @rover.turn_right
      when "M"
        @rover.move
      end
    end
    rover
  end
end

rover = Rover.new(1, 2, 'N')
rover2 = Rover.new(3, 3, 'E')


RoverPath.send_commands(rover, "LMLMLMLMM")
RoverPath.send_commands(rover2, "MMRMMRMRRM")

puts "#{rover.x_position} #{rover.y_position} #{rover.direction}"
puts "#{rover2.x_position} #{rover2.y_position} #{rover2.direction}"


