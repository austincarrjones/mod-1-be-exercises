require './lib/activity'
require 'pry'

RSpec.configure do |config|
  config.formatter = :documentation
end
 
RSpec.describe Activity do
  describe 'initialize' do
    it 'exists' do
      activity = Activity.new("Brunch")
      expect(activity).to be_a Activity
      expect(activity.name).to eq "Brunch"
      expect(activity.participants).to eq({})
    end
  end

  describe '#add_participant' do
    it 'can add participants' do
      activity = Activity.new("Brunch")
      activity.add_participant("Maria", 20)
      expect(activity.participants).to eq({"Maria" => 20})

      activity.add_participant("Luther", 40)
      expect(activity.participants).to eq({"Maria" => 20, "Luther" => 40})
    end
  end

  describe '#total_cost' do
    it 'can keep track of costs' do
      activity = Activity.new("Brunch")
      activity.add_participant("Maria", 20)
      expect(activity.total_cost).to eq 20

      activity.add_participant("Luther", 40)
      expect(activity.total_cost).to eq 60
    end
  end

  describe '#split' do
    it 'can split total cost among participants' do
      activity = Activity.new("Brunch")
      activity.add_participant("Maria", 20)
      activity.add_participant("Luther", 40)
      expect(activity.total_cost).to eq 60

      expect(activity.split).to eq 30
    end
  end

  describe '#owed' do
    it 'can calculate the difference between what they paid and the split' do
      activity = Activity.new("Brunch")
      activity.add_participant("Maria", 20)
      activity.add_participant("Luther", 40)

      expect(activity.split).to eq 30
      expect(activity.owed).to eq({"Maria" => 10, "Luther" => -10})
    end
  end
  
end