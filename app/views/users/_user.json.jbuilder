json.extract! user, :id, :uid, :mail, :password_digest, :address, :birthday, :sex, :created_at, :updated_at
json.url user_url(user, format: :json)