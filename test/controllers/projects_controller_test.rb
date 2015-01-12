require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { active_date: @project.active_date, code: @project.code, created_at: @project.created_at, created_by: @project.created_by, description: @project.description, inactive_date: @project.inactive_date, updated_at: @project.updated_at, updated_by: @project.updated_by, url: @project.url }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: { active_date: @project.active_date, code: @project.code, created_at: @project.created_at, created_by: @project.created_by, description: @project.description, inactive_date: @project.inactive_date, updated_at: @project.updated_at, updated_by: @project.updated_by, url: @project.url }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
