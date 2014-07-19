class Category < ActiveRecord::Base
  belongs_to :business_profile
  has_many :business_profile_categories
  has_many :business_profiles
end
