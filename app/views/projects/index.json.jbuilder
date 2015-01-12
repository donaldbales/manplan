json.array!(@projects) do |project|
  json.extract! project, :id, :code, :description, :url, :active_date, :inactive_date, :created_by, :created_at, :updated_by, :updated_at
  json.url project_url(project, format: :json)
end
