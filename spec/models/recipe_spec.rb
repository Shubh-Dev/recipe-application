require 'rails_helper'

RSpec.describe Recipe, type: :model do
    subject do
        Recipe.new(name: 'Recipe', preparation_time: 20, cooking_time: 15, description: 'text', public: true, user_id: 1)
      end
      before { subject.save }

    it 'name should be present' do
        subject.name = ''
        expect(subject).to_not be_valid
    end

    it 'preparation_time should be present' do
        subject.preparation_time = ''
        expect(subject).to_not be_valid
    end

    it 'cooking_time should be present' do
        subject.cooking_time = ''
        expect(subject).to_not be_valid
    end 

    it 'description should be present' do
        subject.description = ''
        expect(subject).to_not be_valid
    end

    it 'public should be present' do
        subject.public = ''
        expect(subject).to_not be_valid
    end

    it 'preparation_time should be a number' do
        subject.preparation_time = 'a'
        expect(subject).to_not be_valid
    end

    it 'cooking_time should be a number' do
        subject.cooking_time = 'a'
        expect(subject).to_not be_valid
    end

    it 'preparation_time should be greater than 0' do
        subject.preparation_time = 0
        expect(subject).to_not be_valid
    end

    it 'cooking_time should be greater than 0' do
        subject.cooking_time = 0
        expect(subject).to_not be_valid
    end
end