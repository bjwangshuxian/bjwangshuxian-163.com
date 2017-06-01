json.extract! product, :id, :name, :price, :logo, :desc, :created_at, :updated_at
json.url product_url(product, format: :json)
