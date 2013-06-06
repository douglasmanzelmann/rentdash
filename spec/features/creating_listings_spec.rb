require 'spec_helper'

feature "Creating a new listing" do 
  before do 
    visit '/'
    click_link 'New Listing'
  end

  scenario "New listing with valid information" do
    description = "This is a description for a room in an awesome group house. 
                   This house features several very cute ladies."

    fill_in 'Title', with: "Awesome house"
    fill_in 'Location', with: "Bmore"
    fill_in 'Description', with: description
    fill_in 'Rent', with: "500"

    click_button 'Create Listing'

    expect(page).to have_content("Listing has been created.")

    listing = Listing.where(title: 'Awesome house').first

    expect(page.current_url).to eql(listing_url(listing))

    title = "Awesome house - Listings - RentDash"
    expect(page).to have_title title
    #expect(find("title").native.text).to have_content(title)
  end

  scenario "with invalid information" do 
    click_button "Create Listing"

    expect(page).to have_content("Listing hasn't been created.")
    expect(page).to have_content("Titlecan't be blank")
    expect(page).to have_content("Locationcan't be blank")
    expect(page).to have_content("Description can't be blank")
    expect(page).to have_content("Rentcan't be blank")

  end
end