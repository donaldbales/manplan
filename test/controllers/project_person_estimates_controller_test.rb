require 'test_helper'

class ProjectPersonEstimatesControllerTest < ActionController::TestCase
  setup do
    @project_person_estimate = project_person_estimates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_person_estimates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_person_estimate" do
    assert_difference('ProjectPersonEstimate.count') do
      post :create, project_person_estimate: { active_date: @project_person_estimate.active_date, created_at: @project_person_estimate.created_at, created_by: @project_person_estimate.created_by, inactive_date: @project_person_estimate.inactive_date, person_id: @project_person_estimate.person_id, project_id: @project_person_estimate.project_id, time_amount: @project_person_estimate.time_amount, time_unit_type_id: @project_person_estimate.time_unit_type_id, updated_at: @project_person_estimate.updated_at, updated_by: @project_person_estimate.updated_by }
    end

    assert_redirected_to project_person_estimate_path(assigns(:project_person_estimate))
  end

  test "should show project_person_estimate" do
    get :show, id: @project_person_estimate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_person_estimate
    assert_response :success
  end

  test "should update project_person_estimate" do
    patch :update, id: @project_person_estimate, project_person_estimate: { active_date: @project_person_estimate.active_date, created_at: @project_person_estimate.created_at, created_by: @project_person_estimate.created_by, inactive_date: @project_person_estimate.inactive_date, person_id: @project_person_estimate.person_id, project_id: @project_person_estimate.project_id, time_amount: @project_person_estimate.time_amount, time_unit_type_id: @project_person_estimate.time_unit_type_id, updated_at: @project_person_estimate.updated_at, updated_by: @project_person_estimate.updated_by }
    assert_redirected_to project_person_estimate_path(assigns(:project_person_estimate))
  end

  test "should destroy project_person_estimate" do
    assert_difference('ProjectPersonEstimate.count', -1) do
      delete :destroy, id: @project_person_estimate
    end

    assert_redirected_to project_person_estimates_path
  end
end
