class Pirate

    attr_reader :name,
                :job,
                :heinous_act_counter,
                :cursed,
                :booty

    def initialize(name, job = "Scallywag") #paramater
        @name = name #attribute stored in this instance variable
        @job = job
        @heinous_act_counter = 0
        @cursed = false
        @booty = 0
    end

    def cursed?
        cursed
    end

    def heinous_act_counter
        @heinous_act_counter
    end

    def commit_heinous_act
        @heinous_act_counter += 1
        if heinous_act_counter == 3
            @cursed = true
        end
    end

    def rob_ship
        @booty += 100
    end

end 