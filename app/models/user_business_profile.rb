class UserBusinessProfile < ActiveRecord::Base
  belongs_to :business_profile
  belongs_to :user
end
