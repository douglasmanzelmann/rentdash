class Listing < ActiveRecord::Base
  validates :title, presence: true
  validates :location, presence: true
  validates :description, presence: true 
  validates :rent, presence: true 
end
