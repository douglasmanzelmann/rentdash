require 'spec_helper'

feature 'Viewing Listings' do 
  scenario 'Index' do 
    listing = FactoryGirl.create(:listing)
    visit '/'
    click_link listing.title 
    expect(page.current_url).to eql(listing_url(listing))
  end
end