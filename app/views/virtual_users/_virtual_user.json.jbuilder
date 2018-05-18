json.extract! virtual_user, :id, :virtual_domain_id, :password, :email, :created_at, :updated_at
json.url virtual_user_url(virtual_user, format: :json)
