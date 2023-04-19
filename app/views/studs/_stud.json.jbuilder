json.extract! stud, :id, :stud_name, :stud_address, :created_at, :updated_at
json.url stud_url(stud, format: :json)
