json.extract! user, :id, :name, :phone, :password, :email, :balance, :created_at, :updated_at
json.url user_url(user, format: :json)
