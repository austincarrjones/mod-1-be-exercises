class Dragon

    attr_reader :name, 
                :rider, 
                :color, 
                :meal_count, 
                :hungry

    def initialize(name, color = :gold, rider)
        @name = name
        @rider = rider
        @color = color
        @meal_count = 0
        @hungry = true
    end

    def hungry?
        hungry
    end

    def meal_count
        @meal_count
    end

    def eat
        @meal_count += 1
        if meal_count == 3
            @hungry = false
        end
    end

end