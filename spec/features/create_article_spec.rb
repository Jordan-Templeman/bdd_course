require 'rails_helper'

RSpec.feature "Creating Articles" do
  scenario "A user creates a new articles" do
    visit "/"

    click_link "New article"

    fill_in "Title", with: "article title"
    fill_in "Body", with: "Lorem ipsum" * 15

    click_button "Create Article"

    expect(page).to have_content("Article has been created")
    expect(page.current_path).to eq(articles_path)
  end
end