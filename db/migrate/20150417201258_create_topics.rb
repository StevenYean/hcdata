class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.integer :priorityConditionID
      t.string :topicTitle
      t.string :intervention
      t.integer :phase
      t.integer :priorityConditionID
      t.string :phaseDetails
      t.string :comparators
      t.string :healthImpact
      t.string :patientPopulation
      t.string :status

      t.timestamps
    end
  end
end
