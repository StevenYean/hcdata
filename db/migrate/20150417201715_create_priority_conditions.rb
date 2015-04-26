class CreatePriorityConditions < ActiveRecord::Migration
  def change
    create_table :priority_conditions do |t|
      t.string :name

      t.timestamps
    end
  end
end
