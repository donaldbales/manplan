json.array!(@person_group_members) do |person_group_member|
  json.extract! person_group_member, :id, :person_group_id, :person_id, :active_date, :inactive_date, :created_by, :created_at, :updated_by, :updated_at
  json.url person_group_member_url(person_group_member, format: :json)
end
