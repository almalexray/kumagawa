require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post :create, course: { based: @course.based, certificate: @course.certificate, cost: @course.cost, end_date: @course.end_date, hours: @course.hours, name: @course.name, outlet_control: @course.outlet_control, period: @course.period, start_date: @course.start_date, typed: @course.typed, view: @course.view }
    end

    assert_redirected_to course_path(assigns(:course))
  end

  test "should show course" do
    get :show, id: @course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course
    assert_response :success
  end

  test "should update course" do
    patch :update, id: @course, course: { based: @course.based, certificate: @course.certificate, cost: @course.cost, end_date: @course.end_date, hours: @course.hours, name: @course.name, outlet_control: @course.outlet_control, period: @course.period, start_date: @course.start_date, typed: @course.typed, view: @course.view }
    assert_redirected_to course_path(assigns(:course))
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete :destroy, id: @course
    end

    assert_redirected_to courses_path
  end
end
