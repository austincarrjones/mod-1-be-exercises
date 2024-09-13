class Activity

    attr_reader :name,
                :participants

  def initialize(activity_name)
    @name = activity_name
    @participants = {}
  end

  def add_participant(participant, cost)
    @participants[participant] = cost
  end
  
  def total_cost
    @participants.values.sum
  end
  
  def split
    total_cost / participants.length
  end

  def owed
    owed = Hash.new(0)
    participants.each do |participant, cost|
      owed[participant] = split - cost
    end
    owed
  end
  
end