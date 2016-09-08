json.extract! inventory, :id, :name, :price, :created_at, :updated_at
json.url inventory_url(inventory, format: :json)