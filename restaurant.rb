class Restaurant
    attr_reader :name
    attr_accessor :opening :closing
    def initialize(name, opening, closing)
      @name = name
      @opening = opening
      @opening = closing
    end

    def open?
      Time.new.hour >= @opening && Time.new.hour <= @closing
    end

    def self.all_restaurants_for_city (city_name)
      array = []
      array << new("Mc Donald's", 8, 23)
      array << new("Fat duck", 8, 23)
      array << new("Pret", 8, 20)

      array
end

#> restaurant.change_opening(10)
#> restaurant.opening = 10

