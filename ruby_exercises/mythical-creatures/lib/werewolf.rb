class Werewolf

  attr_reader :name,
              :location,
              :human,
              :wolf,
              :hungry

  def initialize(name, location = nil)
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = false
  end

  def human?
    @human
  end

  def wolf?
    @wolf
  end

  def change!
    @human = !@human
    @wolf = !@wolf
    @hungry = !@hungry
  end

  def hungry?
    @hungry
  end

  

end