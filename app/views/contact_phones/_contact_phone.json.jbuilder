json.extract! contact_phone, :id, :name, :email, :phone, :created_at, :updated_at
json.url contact_phone_url(contact_phone, format: :json)
