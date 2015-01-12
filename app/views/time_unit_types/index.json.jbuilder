json.array!(@time_unit_types) do |time_unit_type|
  json.extract! time_unit_type, :id, :code, :description, :url, :equivalent_hours, :active_date, :inactive_date, :created_by, :created_at, :updated_by, :updated_at
  json.url time_unit_type_url(time_unit_type, format: :json)
end
