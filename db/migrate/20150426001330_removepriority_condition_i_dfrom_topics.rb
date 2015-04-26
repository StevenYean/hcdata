class RemovepriorityConditionIDfromTopics < ActiveRecord::Migration
  def change
  	remove_column :topics, :priorityConditionID
  end
end
