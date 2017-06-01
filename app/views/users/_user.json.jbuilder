json.extract! user, :id, :first_name, :last_name, :address_1, :address_2, :city, :state, :postal_code, :created_at, :updated_at
json.url user_url(user, format: :json)
