json.extract! binding_detail, :id, :name, :created_at, :updated_at
json.url binding_detail_url(binding_detail, format: :json)
