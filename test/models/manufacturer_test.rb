require 'test_helper'

class ManufacturerTest < ActiveSupport::TestCase
  
def setup
	@manufacturer = Manufacturer.new(name: "The Strike Gold",
									location: "Kurashiki")
end

test "should be valid" do
	assert @manufacturer.valid?
end


end
