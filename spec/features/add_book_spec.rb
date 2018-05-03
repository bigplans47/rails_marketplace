require 'rails_helper'

describe "the add a book process" do
  it 'adds a book' do
    visit books_path
    expect(page).to have_content 'New Book'
  end
end
