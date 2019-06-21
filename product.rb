class Product
    attr_reader :name, :checked

    def initialize(name)
      @name = name
      @checked = false
    end
    def check!
      @checked = true
    end

    def checked?
      @checked
    end
end

