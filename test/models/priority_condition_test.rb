require 'test_helper'

class PriorityConditionTest < ActiveSupport::TestCase
  
def setup
	@priorityCondition = PriorityCondition.new(name: "Cancer")
end

test "should be valid" do
	assert @priorityCondition.valid?
end

end
