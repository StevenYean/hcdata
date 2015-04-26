class AddpriorityconditionIDtoTopics < ActiveRecord::Migration
  def change
  	add_column :topics, :priorityConditionID, :integer
  end
end
