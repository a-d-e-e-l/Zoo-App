json.extract! room, :id, :name, :area, :type, :description, :created_at, :updated_at
json.url room_url(room, format: :json)
