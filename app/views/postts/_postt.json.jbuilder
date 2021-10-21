json.extract! postt, :id, :name, :description, :created_at, :updated_at
json.url postt_url(postt, format: :json)
