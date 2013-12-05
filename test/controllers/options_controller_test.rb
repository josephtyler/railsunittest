require 'test_helper'

class OptionsControllerTest < ActionController::TestCase
  setup do
    @option = options(:one)
  end

  test "should redirect index to items" do
    get :index
		assert_redirect_to controller: "items"
  end

  test "should get new" do
		item = Item.first
    get :new, for_item: item[:id]
    assert_response :success
  end

  test "should redirect to items if for_item is not set for new option" do
		get :new
		assert_redirected_to controller: "items"
	end

  test "should create option" do
    assert_difference('Option.count') do
      post :create, option: { name: @option.name, price_in_cents: @option.price_in_cents, item_id: 10 }
    end

    assert_redirected_to option_path(assigns(:option))
  end

  test "should show option" do
    get :show, id: @option
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @option
    assert_response :success
  end

  test "should update option" do
    patch :update, id: @option, option: { name: @option.name, price_in_cents: @option.price_in_cents }
    assert_redirected_to option_path(assigns(:option))
  end

  test "should destroy option" do
    assert_difference('Option.count', -1) do
      delete :destroy, id: @option
    end

    assert_redirected_to options_path
  end
end
