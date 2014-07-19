class BusinessProfile < ActiveRecord::Base
  belongs_to :category
  has_many :business_profile_categories
  has_many :categories
  validates_formatting_of :facebook, using: :url
  validates_formatting_of :linkedin, using: :url
end
