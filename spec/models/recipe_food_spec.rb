require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
    subject { RecipeFood.create(recipe_id: 1, food_id: 1, quantity: 1) }
    before { subject.save }

    it 'recipe_id should be present' do
        subject.recipe_id = ''
        expect(subject).to_not be_valid
    end

    it 'food_id should be present' do
        subject.food_id = ''
        expect(subject).to_not be_valid
    end

    it 'quantity should be present' do
        subject.quantity = ''
        expect(subject).to_not be_valid
    end

    it 'quantity should be a number' do
        subject.quantity = 'a'
        expect(subject).to_not be_valid
    end

    it 'quantity should be greater than 0' do
        subject.quantity = 0
        expect(subject).to_not be_valid
    end
end