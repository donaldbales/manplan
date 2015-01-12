class CreatePersonGroups < ActiveRecord::Migration
  def change
    create_table :person_groups do |t|
      t.string :code
      t.string :description
      t.string :url
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
