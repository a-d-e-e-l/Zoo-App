json.extract! animal, :id, :name, :dob, :purchase_date, :weight, :description, :type, :created_at, :updated_at
json.url animal_url(animal, format: :json)
