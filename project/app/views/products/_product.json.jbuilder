json.extract! product, :id, :name, :description, :price, :sale, :path, :created_at, :updated_at
json.url product_url(product, format: :json)
