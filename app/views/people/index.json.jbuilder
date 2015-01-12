json.array!(@people) do |person|
  json.extract! person, :id, :code, :description, :userid, :active_date, :inactive_date, :created_by, :created_at, :updated_by, :updated_at
  json.url person_url(person, format: :json)
end
