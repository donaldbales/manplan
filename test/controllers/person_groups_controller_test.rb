require 'test_helper'

class PersonGroupsControllerTest < ActionController::TestCase
  setup do
    @person_group = person_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:person_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person_group" do
    assert_difference('PersonGroup.count') do
      post :create, person_group: { active_date: @person_group.active_date, code: @person_group.code, created_at: @person_group.created_at, created_by: @person_group.created_by, description: @person_group.description, inactive_date: @person_group.inactive_date, updated_at: @person_group.updated_at, updated_by: @person_group.updated_by, url: @person_group.url }
    end

    assert_redirected_to person_group_path(assigns(:person_group))
  end

  test "should show person_group" do
    get :show, id: @person_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person_group
    assert_response :success
  end

  test "should update person_group" do
    patch :update, id: @person_group, person_group: { active_date: @person_group.active_date, code: @person_group.code, created_at: @person_group.created_at, created_by: @person_group.created_by, description: @person_group.description, inactive_date: @person_group.inactive_date, updated_at: @person_group.updated_at, updated_by: @person_group.updated_by, url: @person_group.url }
    assert_redirected_to person_group_path(assigns(:person_group))
  end

  test "should destroy person_group" do
    assert_difference('PersonGroup.count', -1) do
      delete :destroy, id: @person_group
    end

    assert_redirected_to person_groups_path
  end
end
