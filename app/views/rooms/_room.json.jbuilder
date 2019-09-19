json.extract! room, :id, :name, :price, :age, :address, :remarks, :created_at, :updated_at
json.url room_url(room, format: :json)