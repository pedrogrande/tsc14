require 'test_helper'

class UserBusinessProfilesControllerTest < ActionController::TestCase
  setup do
    @user_business_profile = user_business_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_business_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_business_profile" do
    assert_difference('UserBusinessProfile.count') do
      post :create, user_business_profile: { business_profile_id: @user_business_profile.business_profile_id, is_owner: @user_business_profile.is_owner, position: @user_business_profile.position, user_id: @user_business_profile.user_id }
    end

    assert_redirected_to user_business_profile_path(assigns(:user_business_profile))
  end

  test "should show user_business_profile" do
    get :show, id: @user_business_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_business_profile
    assert_response :success
  end

  test "should update user_business_profile" do
    patch :update, id: @user_business_profile, user_business_profile: { business_profile_id: @user_business_profile.business_profile_id, is_owner: @user_business_profile.is_owner, position: @user_business_profile.position, user_id: @user_business_profile.user_id }
    assert_redirected_to user_business_profile_path(assigns(:user_business_profile))
  end

  test "should destroy user_business_profile" do
    assert_difference('UserBusinessProfile.count', -1) do
      delete :destroy, id: @user_business_profile
    end

    assert_redirected_to user_business_profiles_path
  end
end
