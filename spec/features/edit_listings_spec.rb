require 'spec_helper'

feature "Edit Listings" do 
  before do 
    @listing = FactoryGirl.create(:listing)

    visit '/'
    click_link @listing.title 
    click_link 'Edit'
  end

  scenario "with valid information" do  
    fill_in 'Title', with: "Live in my butt, yo"
    click_button 'Update Listing'

    expect(page).to have_content("Listing has been updated.")
    expect(page.current_url).to eql(listing_url(@listing))
  end

  scenario "with invalid information" do 
    fill_in 'Title', with: ''
    click_button 'Update Listing'

    expect(page).to have_content("Listing has not been updated.")
  end
end