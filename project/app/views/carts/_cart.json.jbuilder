json.extract! cart, :id, :product_id, :user_id, :num, :datetime, :created_at, :updated_at
json.url cart_url(cart, format: :json)
