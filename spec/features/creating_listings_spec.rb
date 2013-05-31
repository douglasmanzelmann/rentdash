require 'spec_helper'

feature "Creating a new listing" do 
  scenario "New listing with valid information" do
    visit '/'
    click_link 'New Listing'

    description = "This is a description for a room in an awesome group house. 
                   This house features several very cute ladies."

    fill_in 'Title', with: "Awesome house"
    fill_in 'Location', with: "Bmore"
    fill_in 'Description', with: description
    fill_in 'Rent', with: "500"

    click_button 'Submit'
  end
end