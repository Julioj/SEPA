json.extract! employee, :id, :name, :email, :tlf, :isLic, :created_at, :updated_at
json.url employee_url(employee, format: :json)
