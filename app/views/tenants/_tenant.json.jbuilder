json.extract! tenant, :id, :subdomain, :created_at, :updated_at
json.url tenant_url(tenant, format: :json)
