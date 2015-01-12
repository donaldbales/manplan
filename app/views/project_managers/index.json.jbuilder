json.array!(@project_managers) do |project_manager|
  json.extract! project_manager, :id, :project_id, :person_id, :primary, :active_date, :inactive_date, :created_by, :created_at, :updated_by, :updated_at
  json.url project_manager_url(project_manager, format: :json)
end
