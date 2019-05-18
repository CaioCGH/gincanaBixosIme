json.extract! profile, :id, :profile_type, :created_at, :updated_at
json.url profile_url(profile, format: :json)
