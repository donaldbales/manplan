class CreatePersonGroupMembers < ActiveRecord::Migration
  def change
    create_table :person_group_members do |t|
      t.integer :person_group_id
      t.integer :person_id
      t.datetime :active_date
      t.datetime :inactive_date
      t.string :created_by
      t.datetime :created_at
      t.string :updated_by
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
