# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs (name)' do
    visit new_book_path
    fill_in "book[name]", with: 'test book'
    fill_in "book[author]", with: 'Me'
    fill_in "book[price]", with: '10.1'
    fill_in "book[published_date]", with: '2020-03-30'
    click_on 'Add Book'
    expect(page).to have_content('test book')
  end
  scenario 'invalid inputs (name)' do
    visit new_book_path
    fill_in "book[name]", with: nil
    fill_in "book[author]", with: 'Me'
    fill_in "book[price]", with: '10.1'
    fill_in "book[published_date]", with: '2020-03-30'
    click_on 'Add Book'
    expect(page).to_not have_content('Created Book')
  end

  scenario 'valid inputs (author)' do
    visit new_book_path
    fill_in "book[name]", with: 'test book'
    fill_in "book[author]", with: 'Me'
    fill_in "book[price]", with: '10.1'
    fill_in "book[published_date]", with: '2020-03-30'
    click_on 'Add Book'
    expect(page).to have_content('Me')
  end
  scenario 'invalid inputs (author)' do
    visit new_book_path
    fill_in "book[name]", with: 'test book'
    fill_in "book[author]", with: nil
    fill_in "book[price]", with: '10.1'
    fill_in "book[published_date]", with: '2020-03-30'
    click_on 'Add Book'
    expect(page).to_not have_content('Created Book')
  end

  scenario 'valid inputs (price)' do
    visit new_book_path
    fill_in "book[name]", with: 'test book'
    fill_in "book[author]", with: 'Me'
    fill_in "book[price]", with: '10.1'
    fill_in "book[published_date]", with: '2020-03-30'
    click_on 'Add Book'
    expect(page).to have_content('10.1')
  end
  scenario 'invalid inputs (price)' do
    visit new_book_path
    fill_in "book[name]", with: 'test book'
    fill_in "book[author]", with: 'Me'
    fill_in "book[price]", with: nil
    fill_in "book[published_date]", with: '2020-03-30'
    click_on 'Add Book'
    expect(page).to_not have_content('Created Book')
  end

  scenario 'valid inputs (published date)' do
    visit new_book_path
    fill_in "book[name]", with: 'test book'
    fill_in "book[author]", with: 'Me'
    fill_in "book[price]", with: '10.1'
    fill_in "book[published_date]", with: '2020-03-30'
    click_on 'Add Book'
    expect(page).to have_content('2020-03-30')
  end
  scenario 'invalid inputs (published date)' do
    visit new_book_path
    fill_in "book[name]", with: 'test book'
    fill_in "book[author]", with: 'Me'
    fill_in "book[price]", with: '10.1'
    fill_in "book[published_date]", with: nil
    click_on 'Add Book'
    expect(page).to_not have_content('Created Book')
  end
end