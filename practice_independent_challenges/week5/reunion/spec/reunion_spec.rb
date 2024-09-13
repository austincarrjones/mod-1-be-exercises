require './lib/reunion'
require './lib/activity'
require 'pry'


RSpec.configure do |config|
  config.formatter = :documentation
end

RSpec.describe Reunion do
  describe 'initialize' do
    it 'exists' do
      reunion = Reunion.new("1406 BE")
	    expect(reunion).to be_a Reunion
	    expect(reunion.name).to eq("1406 BE")
	    expect(reunion.activities).to eq([])
    end
  end

  describe '#add_activity' do
    it 'can add activities' do 
      reunion = Reunion.new("1406 BE")
      activity_1 = Activity.new("Brunch")
      reunion.add_activity(activity_1)
      expect(reunion.activities).to eq([activity_1])
    end
  end

  describe '#event_total_cost' do
    it 'can sum all activity total costs' do 
      reunion = Reunion.new("1406 BE")
      activity_1 = Activity.new("Brunch")
      reunion.add_activity(activity_1)
      activity_1.add_participant("Maria", 20)
      activity_1.add_participant("Luther", 40)
      activity_1.add_participant("Austin", 15)
      
      expect(reunion.event_total_cost).to eq 75

      activity_2 = Activity.new("Dinner")
      reunion.add_activity(activity_2)
      activity_2.add_participant("Maria", 10)
      activity_2.add_participant("Luther", 30)
      activity_2.add_participant("Austin", 20)
      
      expect(reunion.event_total_cost).to eq 135
    end
  end

  describe '#all_owed' do
    it 'can provide list of each participants name and what they owe for all activities' do
      reunion = Reunion.new("1406 BE")
      activity_1 = Activity.new("Brunch")
      reunion.add_activity(activity_1)
      activity_1.add_participant("Maria", 20)
      activity_1.add_participant("Luther", 40)
      activity_1.add_participant("Austin", 15)
      activity_2 = Activity.new("Dinner")
      reunion.add_activity(activity_2)
      activity_2.add_participant("Maria", 10)
      activity_2.add_participant("Luther", 30)
      activity_2.add_participant("Austin", 20)
      
      expect(reunion.event_total_cost).to eq 135

      expected = {
            "Maria" => 15,
            "Luther" => -25,
            "Austin" => 10
      }
      expect(reunion.all_owed).to eq(expected)
    end
  end

  describe '#owed_summary' do
    it 'can print a summary of each participants name and what they owe' do
      reunion = Reunion.new("1406 BE")
      activity_1 = Activity.new("Brunch")
      reunion.add_activity(activity_1)
      activity_1.add_participant("Maria", 20)
      activity_1.add_participant("Luther", 40)
      activity_1.add_participant("Austin", 15)
      activity_2 = Activity.new("Dinner")
      reunion.add_activity(activity_2)
      activity_2.add_participant("Maria", 10)
      activity_2.add_participant("Luther", 30)
      activity_2.add_participant("Austin", 20)

      expected = "Maria owes $15\nLuther is owed $25\nAustin owes $10"

      expect(reunion.owed_summary).to eq(expected)
    end 
  end
end
