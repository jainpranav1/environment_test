# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J. K. Rowling'
    fill_in 'Price', with: '50'
    select '2017', :from => 'book[publish_date(1i)]'
    select 'March', :from => 'book[publish_date(2i)]'
    select '12', :from => 'book[publish_date(3i)]'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('J. K. Rowling')
    expect(page).to have_content('50')
    expect(page).to have_content('2017-03-12')
  end
end