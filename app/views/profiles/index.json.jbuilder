json.array!(@profiles) do |profile|
  json.extract! profile, :id, :user_id, :tagline, :about, :email, :phone, :url, :twitter, :facebook, :linkedin, :google, :image, :slug, :name, :mentor, :github
  json.url profile_url(profile, format: :json)
end
