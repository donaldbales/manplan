require 'test_helper'

class ProjectManagersControllerTest < ActionController::TestCase
  setup do
    @project_manager = project_managers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_managers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_manager" do
    assert_difference('ProjectManager.count') do
      post :create, project_manager: { active_date: @project_manager.active_date, created_at: @project_manager.created_at, created_by: @project_manager.created_by, inactive_date: @project_manager.inactive_date, person_id: @project_manager.person_id, primary: @project_manager.primary, project_id: @project_manager.project_id, updated_at: @project_manager.updated_at, updated_by: @project_manager.updated_by }
    end

    assert_redirected_to project_manager_path(assigns(:project_manager))
  end

  test "should show project_manager" do
    get :show, id: @project_manager
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_manager
    assert_response :success
  end

  test "should update project_manager" do
    patch :update, id: @project_manager, project_manager: { active_date: @project_manager.active_date, created_at: @project_manager.created_at, created_by: @project_manager.created_by, inactive_date: @project_manager.inactive_date, person_id: @project_manager.person_id, primary: @project_manager.primary, project_id: @project_manager.project_id, updated_at: @project_manager.updated_at, updated_by: @project_manager.updated_by }
    assert_redirected_to project_manager_path(assigns(:project_manager))
  end

  test "should destroy project_manager" do
    assert_difference('ProjectManager.count', -1) do
      delete :destroy, id: @project_manager
    end

    assert_redirected_to project_managers_path
  end
end
