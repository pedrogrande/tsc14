class BusinessProfileCategory < ActiveRecord::Base
  belongs_to :category
  belongs_to :business_profile
end
