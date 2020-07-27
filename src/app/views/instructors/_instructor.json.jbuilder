json.extract! instructor, :id, :name, :address, :phone, :dob, :transmission, :gender, :created_at, :updated_at
json.url instructor_url(instructor, format: :json)
