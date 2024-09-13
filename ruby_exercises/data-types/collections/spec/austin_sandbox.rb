require 'pry'
require 'rspec'

RSpec.describe 'Arrays' do

  teams = ["Rockies", "Avalanche", "Nuggets", "Broncos", "Rapids"]
  binding.pry
  # Call a method on the teams variable to get the second, third, and fourth teams
  some_teams = teams.
  expect(some_teams).to eq(["Avalanche", "Nuggets", "Broncos"])

end
