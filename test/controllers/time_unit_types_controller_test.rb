require 'test_helper'

class TimeUnitTypesControllerTest < ActionController::TestCase
  setup do
    @time_unit_type = time_unit_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:time_unit_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create time_unit_type" do
    assert_difference('TimeUnitType.count') do
      post :create, time_unit_type: { active_date: @time_unit_type.active_date, code: @time_unit_type.code, created_at: @time_unit_type.created_at, created_by: @time_unit_type.created_by, description: @time_unit_type.description, equivalent_hours: @time_unit_type.equivalent_hours, inactive_date: @time_unit_type.inactive_date, updated_at: @time_unit_type.updated_at, updated_by: @time_unit_type.updated_by, url: @time_unit_type.url }
    end

    assert_redirected_to time_unit_type_path(assigns(:time_unit_type))
  end

  test "should show time_unit_type" do
    get :show, id: @time_unit_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @time_unit_type
    assert_response :success
  end

  test "should update time_unit_type" do
    patch :update, id: @time_unit_type, time_unit_type: { active_date: @time_unit_type.active_date, code: @time_unit_type.code, created_at: @time_unit_type.created_at, created_by: @time_unit_type.created_by, description: @time_unit_type.description, equivalent_hours: @time_unit_type.equivalent_hours, inactive_date: @time_unit_type.inactive_date, updated_at: @time_unit_type.updated_at, updated_by: @time_unit_type.updated_by, url: @time_unit_type.url }
    assert_redirected_to time_unit_type_path(assigns(:time_unit_type))
  end

  test "should destroy time_unit_type" do
    assert_difference('TimeUnitType.count', -1) do
      delete :destroy, id: @time_unit_type
    end

    assert_redirected_to time_unit_types_path
  end
end
