require 'test_helper'

class FabmomentsControllerTest < ActionController::TestCase
  setup do
    @fabmoment = fabmoments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fabmoments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fabmoment" do
    assert_difference('Fabmoment.count') do
      post :create, fabmoment: { desc: @fabmoment.desc, title: @fabmoment.title }
    end

    assert_redirected_to fabmoment_path(assigns(:fabmoment))
  end

  test "should show fabmoment" do
    get :show, id: @fabmoment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fabmoment
    assert_response :success
  end

  test "should update fabmoment" do
    patch :update, id: @fabmoment, fabmoment: { desc: @fabmoment.desc, title: @fabmoment.title }
    assert_redirected_to fabmoment_path(assigns(:fabmoment))
  end

  test "should destroy fabmoment" do
    assert_difference('Fabmoment.count', -1) do
      delete :destroy, id: @fabmoment
    end

    assert_redirected_to fabmoments_path
  end
end
