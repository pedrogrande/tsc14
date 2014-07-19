json.array!(@business_profiles) do |business_profile|
  json.extract! business_profile, :id, :owner, :name, :description, :twitter, :facebook, :linkedin, :url, :google, :address, :building, :city, :state, :postcode, :country, :logo, :image, :email, :phone, :latitude, :longitude, :slug, :category_id
  json.url business_profile_url(business_profile, format: :json)
end
