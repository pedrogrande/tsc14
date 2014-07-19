json.array!(@user_business_profiles) do |user_business_profile|
  json.extract! user_business_profile, :id, :business_profile_id, :user_id, :is_owner, :position
  json.url user_business_profile_url(user_business_profile, format: :json)
end
