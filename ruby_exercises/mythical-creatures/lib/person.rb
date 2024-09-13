class Person

  attr_reader :name

  def initialize(name)
    @name = name
    @stoned = false
  end

  def turned_to_stone
    @stoned = true
  end

  def stoned?
    @stoned
  end

  def unstone
    @stoned = false
  end

end