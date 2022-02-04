# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'J. K. Rowling', price: 50, publish_date: DateTime.new(1997,6,26))
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end
  
  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end
  
  it 'is not valid without a publish date' do
    subject.publish_date = nil
    expect(subject).not_to be_valid
  end
end