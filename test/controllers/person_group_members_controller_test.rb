require 'test_helper'

class PersonGroupMembersControllerTest < ActionController::TestCase
  setup do
    @person_group_member = person_group_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:person_group_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person_group_member" do
    assert_difference('PersonGroupMember.count') do
      post :create, person_group_member: { active_date: @person_group_member.active_date, created_at: @person_group_member.created_at, created_by: @person_group_member.created_by, inactive_date: @person_group_member.inactive_date, person_group_id: @person_group_member.person_group_id, person_id: @person_group_member.person_id, updated_at: @person_group_member.updated_at, updated_by: @person_group_member.updated_by }
    end

    assert_redirected_to person_group_member_path(assigns(:person_group_member))
  end

  test "should show person_group_member" do
    get :show, id: @person_group_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person_group_member
    assert_response :success
  end

  test "should update person_group_member" do
    patch :update, id: @person_group_member, person_group_member: { active_date: @person_group_member.active_date, created_at: @person_group_member.created_at, created_by: @person_group_member.created_by, inactive_date: @person_group_member.inactive_date, person_group_id: @person_group_member.person_group_id, person_id: @person_group_member.person_id, updated_at: @person_group_member.updated_at, updated_by: @person_group_member.updated_by }
    assert_redirected_to person_group_member_path(assigns(:person_group_member))
  end

  test "should destroy person_group_member" do
    assert_difference('PersonGroupMember.count', -1) do
      delete :destroy, id: @person_group_member
    end

    assert_redirected_to person_group_members_path
  end
end
