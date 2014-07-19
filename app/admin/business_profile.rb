ActiveAdmin.register BusinessProfile do
  permit_params :owner, :name, :description, :twitter, :facebook, :linkedin, :url, :google, :address, :building, :city, :state, :postcode, :country, :logo, :image, :email, :phone, :latitude, :longitude, :slug

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
