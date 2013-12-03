require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "should not save without name" do
    item = Item.new
    assert !item.save, "Saved the item without a name"
  end
end
