require_relative 'building'

class House < Building

  def self.price_for_city(city_name)
    case city_name
      when "Paris"
        1000
      when "London"
        3000
    end
  end
end
