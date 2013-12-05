require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  #  test "the truth" do
  #    assert true
  #  end

	test "should not save item without name" do
  	item = Item.new
  	assert !item.save, "Item saved without name"
	end
end
