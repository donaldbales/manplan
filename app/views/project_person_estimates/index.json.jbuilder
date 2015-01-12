json.array!(@project_person_estimates) do |project_person_estimate|
  json.extract! project_person_estimate, :id, :project_id, :person_id, :time_amount, :time_unit_type_id, :active_date, :inactive_date, :created_by, :created_at, :updated_by, :updated_at
  json.url project_person_estimate_url(project_person_estimate, format: :json)
end
