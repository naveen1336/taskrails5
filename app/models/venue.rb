class Venue < ApplicationRecord
has_many  :inventories, dependent: :destroy

geocoded_by :address

after_validation :geocode, :if => :address_changed?




end
