require 'rails_helper'

RSpec.describe Food, type: :model do
  subject { Food.create(name: 'FOOD1', price: 3, measurement_unit: 'kilos', quantity: 3, user_id: 1) }
  before { subject.save }

    it 'name should be present' do
     subject.name = ''
     expect(subject).to_not be_valid
    end

    it 'price should be present' do
        subject.price = ''
        expect(subject).to_not be_valid
        end

    it 'measurement_unit should be present' do
        subject.measurement_unit = ''
        expect(subject).to_not be_valid
        end
    
    it 'quantity should be present' do
        subject.quantity = ''
        expect(subject).to_not be_valid
        end
    it 'price should be a number' do
        subject.price = 'a'
        expect(subject).to_not be_valid
        end
    it 'quantity should be a number' do
        subject.quantity = 'a'
        expect(subject).to_not be_valid
        end
    it 'price should be greater than 0' do
        subject.price = 0
        expect(subject).to_not be_valid
        end

end