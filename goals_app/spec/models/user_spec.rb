require 'rails_helper'

RSpec.describe User, type: :model do
  # let(:incomplete_team) { BasketballTeam.new(city: 'New York') }
  
  describe "validates input" do
    it {should validate_uniqueness_of(:username) }
    it {should validate_presence_of(:session_token) }
    it {should validate_length_of(:password).is_at_least(6) }
  end
end
