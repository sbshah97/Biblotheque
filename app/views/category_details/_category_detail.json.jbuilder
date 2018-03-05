json.extract! category_detail, :id, :name, :created_at, :updated_at
json.url category_detail_url(category_detail, format: :json)
