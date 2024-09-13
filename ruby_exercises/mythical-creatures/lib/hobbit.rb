class Hobbit

    attr_reader :name,
                :disposition,
                :age,
                :height

    def initialize(name, disposition = "homebody")
        @name = name
        @disposition = disposition
        @age = 0
        @height = "short"
    end

    def adult?
       return true if age > 32
       false
    end

    def celebrate_birthday
        @age += 1
    end

    def old?
        return true if age > 100
        false
    end

    def has_ring?
        return true if name == "Frodo"
        false
    end

    def is_short?
        return true if height == "short"
        false
    end

end