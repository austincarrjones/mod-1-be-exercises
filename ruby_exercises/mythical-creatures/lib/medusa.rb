class Medusa

  attr_reader :name,
              :statues

  def initialize(name)
    @name =name
    @statues = []
  end

  def stare(victim)
    @statues << victim
    victim.turned_to_stone #this calls a method on a differet class
    if @statues.length > 3
       @statues.shift 
    end
  end

end