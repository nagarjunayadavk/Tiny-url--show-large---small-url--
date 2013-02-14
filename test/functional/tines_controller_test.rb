require 'test_helper'

class TinesControllerTest < ActionController::TestCase
  setup do
    @tine = tines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tine" do
    assert_difference('Tine.count') do
      post :create, tine: @tine.attributes
    end

    assert_redirected_to tine_path(assigns(:tine))
  end

  test "should show tine" do
    get :show, id: @tine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tine
    assert_response :success
  end

  test "should update tine" do
    put :update, id: @tine, tine: @tine.attributes
    assert_redirected_to tine_path(assigns(:tine))
  end

  test "should destroy tine" do
    assert_difference('Tine.count', -1) do
      delete :destroy, id: @tine
    end

    assert_redirected_to tines_path
  end
end
