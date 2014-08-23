require 'test_helper'

class UserTemplatesControllerTest < ActionController::TestCase
  setup do
    @user_template = user_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_template" do
    assert_difference('UserTemplate.count') do
      post :create, user_template: {  }
    end

    assert_redirected_to user_template_path(assigns(:user_template))
  end

  test "should show user_template" do
    get :show, id: @user_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_template
    assert_response :success
  end

  test "should update user_template" do
    patch :update, id: @user_template, user_template: {  }
    assert_redirected_to user_template_path(assigns(:user_template))
  end

  test "should destroy user_template" do
    assert_difference('UserTemplate.count', -1) do
      delete :destroy, id: @user_template
    end

    assert_redirected_to user_templates_path
  end
end
