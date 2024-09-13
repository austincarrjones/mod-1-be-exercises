class Vampire

    attr_reader :name, :pet

    def initialize(name, pet = "bat", thirstiness = true)
        @name = name
        @pet = pet
        @thirsty = thirstiness
    end

    def thirsty
        @thirsty
    end

    def drink
        @thirsty = false
    end

end