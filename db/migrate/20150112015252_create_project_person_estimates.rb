class CreateProjectPersonEstimates < ActiveRecord::Migration
  def change
    create_table :project_person_estimates do |t|
      t.integer :project_id
      t.integer :person_id
      t.decimal :time_amount
      t.integer :time_unit_type_id
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
