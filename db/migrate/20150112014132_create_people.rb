class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :code
      t.string :description
      t.string :userid
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
