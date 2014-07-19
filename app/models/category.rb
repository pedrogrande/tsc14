class Category < ActiveRecord::Base
  belongs_to :business_profile
  has_many :business_profile_categories
end
