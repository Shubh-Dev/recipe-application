require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.create(name: 'User test', email: 'user@test.com', password: 'password') }
  before { subject.save }
  it 'email should be present' do
    subject.email = ''
    expect(subject).to_not be_valid
  end
  it 'name should be present' do
    subject.name = ''
    expect(subject).to_not be_valid
  end
end
