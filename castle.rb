require_relative 'building'
require_relative 'butler'

class Castle < Building
  attr_reader :butler
  def has_a_butler?
    @butler != nil
  end

  def floor_area
    super + 200
  end
  def hire_a_butler
    @butler = Butler.new(self)
  end

  def destroy
    "You have just destroyed the castle #{@name}"
  end
  def self.destroy_all
    "You have destroyed all the casltes in the world, boooo"
  end
end
