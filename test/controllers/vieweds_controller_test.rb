require 'test_helper'

class ViewedsControllerTest < ActionController::TestCase
  setup do
    @viewed = vieweds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vieweds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create viewed" do
    assert_difference('Viewed.count') do
      post :create, viewed: { name: @viewed.name }
    end

    assert_redirected_to viewed_path(assigns(:viewed))
  end

  test "should show viewed" do
    get :show, id: @viewed
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @viewed
    assert_response :success
  end

  test "should update viewed" do
    patch :update, id: @viewed, viewed: { name: @viewed.name }
    assert_redirected_to viewed_path(assigns(:viewed))
  end

  test "should destroy viewed" do
    assert_difference('Viewed.count', -1) do
      delete :destroy, id: @viewed
    end

    assert_redirected_to vieweds_path
  end
end
