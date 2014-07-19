class Profile < ActiveRecord::Base
  belongs_to :user
  validates_formatting_of :email, using: :email
  validates_formatting_of :url, using: :url
end
