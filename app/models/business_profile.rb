class BusinessProfile < ActiveRecord::Base
  belongs_to :category
  has_many :business_profile_categories
  has_many :categories
  validates_formatting_of :facebook, using: :url
  validates_formatting_of :linkedin, using: :url
  validates_formatting_of :url, using: :url
  validates_formatting_of :google, using: :url
  validates_formatting_of :email, using: :email
  acts_as_votable 
end
