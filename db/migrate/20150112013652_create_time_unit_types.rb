class CreateTimeUnitTypes < ActiveRecord::Migration
  def change
    create_table :time_unit_types do |t|
      t.string :code
      t.string :description
      t.string :url
      t.decimal :equivalent_hours
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
