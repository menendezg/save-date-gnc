json.extract! guest, :id, :name, :last_name, :email, :table_id, :created_at, :updated_at
json.url guest_url(guest, format: :json)
