class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.integer :topic_ID
      t.integer :man_ID

      t.timestamps
    end
  end
end
