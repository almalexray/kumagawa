require 'test_helper'

class OutletControlsControllerTest < ActionController::TestCase
  setup do
    @outlet_control = outlet_controls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:outlet_controls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create outlet_control" do
    assert_difference('OutletControl.count') do
      post :create, outlet_control: { name: @outlet_control.name }
    end

    assert_redirected_to outlet_control_path(assigns(:outlet_control))
  end

  test "should show outlet_control" do
    get :show, id: @outlet_control
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @outlet_control
    assert_response :success
  end

  test "should update outlet_control" do
    patch :update, id: @outlet_control, outlet_control: { name: @outlet_control.name }
    assert_redirected_to outlet_control_path(assigns(:outlet_control))
  end

  test "should destroy outlet_control" do
    assert_difference('OutletControl.count', -1) do
      delete :destroy, id: @outlet_control
    end

    assert_redirected_to outlet_controls_path
  end
end
