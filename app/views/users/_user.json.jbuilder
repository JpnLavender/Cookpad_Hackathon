json.extract! user, :id, :uid, :mail, :password, :password_confirmation, :address, :birthday, :sex, :created_at, :updated_at
json.url user_url(user, format: :json)
