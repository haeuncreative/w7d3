require 'rails_helper'

RSpec.describe User, type: :model do
  context "validates input" do
    it {should validate_presence_of(:username) }
    it {should validate_presence_of(:session_token) }
    it {should validate_length_of(:password).is_at_least(6) }
  end
end