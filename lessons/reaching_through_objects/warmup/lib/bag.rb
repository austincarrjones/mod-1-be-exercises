class Bag

  attr_reader :candies

  def initialize
    @candies = []
  end

  def empty?
    @candies.empty?
    # if @candies.empty? #or == []
    #   return true
    # else 
    #   return false
    # end
  end

  def count
    @candies.count
  end

  def add_candy(candy)
    @candies << candy
  end

  def contains?(search_candy)
    @candies.each do |candy|
      if candy.type.include?(search_candy)
        return true
      end
    end
      return false
  end

end