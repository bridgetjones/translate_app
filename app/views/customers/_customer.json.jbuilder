json.extract! customer, :id, :name, :language, :ph_number, :email, :shop_owner_id, :created_at, :updated_at
json.url customer_url(customer, format: :json)
