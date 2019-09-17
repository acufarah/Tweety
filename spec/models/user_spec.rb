require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'ensures email presence' do
      user = User.new(name: 'Fiona', password: '123456').save
      expect(user).to eq(false)
    end

    it 'should save successfully' do 
      user = User.new(name: 'Fiona', email: 'sample@example.com', password: '123456').save
      expect(user).to eq(true)
    end
    it "is invalid with a duplicate email address" do
        User.create(
        name: "Tester",
        email: "tester@example.com",
        password: "dottle-nouveau-pavilion-tights-furze",
        )
        user = User.new(
        
        name: "Jane",
        email: "tester@example.com",
        password: "dottle-nouveau-pavilion-tights-furze",
        )
        user.valid?
        expect(user.errors[:email]).to include("has already been taken")
    end
  end
end
