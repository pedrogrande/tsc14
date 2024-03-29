class Profile < ActiveRecord::Base
  belongs_to :user
  validates_formatting_of :email, using: :email
  validates_formatting_of :url, using: :url
  validates_formatting_of :facebook, using: :url
  validates_formatting_of :linkedin, using: :url
  validates_formatting_of :google, using: :url
  acts_as_votable 
end
