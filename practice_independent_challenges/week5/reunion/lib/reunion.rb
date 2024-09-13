class Reunion

    attr_reader :name,
                :activities

  def initialize(name)
    @name = name
    @activities = []
  end

  def add_activity(activity)
    @activities << activity
  end

  def event_total_cost
    total_cost = []
    activities.each do |activity|
      total_cost << activity.participants.values.sum
    end
    total_cost.sum
  end

  def all_owed
    all_owed = Hash.new(0)
    activities.each do |activity|
      activity.owed.each do |participant, owed|
        all_owed[participant] += owed
      end
    end
    binding.pry
    all_owed
  end

  def owed_summary
    result = ""
    all_owed.each do |key, value|
      #if value < 0 then concat with "is owed $"
      if value < 0
        result += "#{key} is owed $#{value.abs}\n"
      else 
        result += "#{key} owes $#{value}\n"
      end
    end
    # binding.pry
    result.chomp
  end
end