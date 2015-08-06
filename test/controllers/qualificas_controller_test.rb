require 'test_helper'

class QualificasControllerTest < ActionController::TestCase
  setup do
    @qualifica = qualificas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qualificas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qualifica" do
    assert_difference('Qualifica.count') do
      post :create, qualifica: { qualifica: @qualifica.qualifica, user_id: @qualifica.user_id }
    end

    assert_redirected_to qualifica_path(assigns(:qualifica))
  end

  test "should show qualifica" do
    get :show, id: @qualifica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qualifica
    assert_response :success
  end

  test "should update qualifica" do
    patch :update, id: @qualifica, qualifica: { qualifica: @qualifica.qualifica, user_id: @qualifica.user_id }
    assert_redirected_to qualifica_path(assigns(:qualifica))
  end

  test "should destroy qualifica" do
    assert_difference('Qualifica.count', -1) do
      delete :destroy, id: @qualifica
    end

    assert_redirected_to qualificas_path
  end
end
