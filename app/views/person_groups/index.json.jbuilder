json.array!(@person_groups) do |person_group|
  json.extract! person_group, :id, :code, :description, :url, :active_date, :inactive_date, :created_by, :created_at, :updated_by, :updated_at
  json.url person_group_url(person_group, format: :json)
end
