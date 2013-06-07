require 'spec_helper'

feature "Deleting Listings" do 
  scenario "Deleting a listing" do
    listing = FactoryGirl.create(:listing)

    visit '/'
    click_link listing.title 
    click_link 'Delete'

    expect(page).to have_content("Listing has been deleted.")
    expect(page.current_url).to eql(listings_url)
    expect(page).to have_no_content(listing.title)
  end
end