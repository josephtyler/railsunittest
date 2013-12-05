require 'test_helper'

class OptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

	test "should not save option without item_id" do
		option = Option.new
		option.name = "8oz"
    option.price_in_cents = 200
		assert !option.save, "Option saved without item_id"
  end

	test "should not save option without integer item_id" do
		option = Option.new
   	option.name = "12oz"
		option.price_in_cents = 300
		option.item_id = "steve"
		assert !option.save, "Option saved without an integer item_id"
	end

	test "should not save option without name" do
		option = Option.new
		option.price_in_cents = 200
		option.item_id = 12
		assert !option.save, "Option saved without a name"
	end

	test "should not save option without price_in_cents" do
		option = Option.new
		option.name = "14oz"
		option.item_id = 12
		assert !option.save, "Option saved without a price_in_cents"
	end

	test "should not save option without integer price_in_cents" do
		option = Option.new
		option.name = "14oz"
		option.price_in_cents = "Garth"
		option.item_id = 12
		assert !option.save, "Option saved without an integer price_in_cents"
	end
end
