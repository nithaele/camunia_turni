require 'test_helper'

class RuolisControllerTest < ActionController::TestCase
  setup do
    @ruoli = ruolis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ruolis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ruoli" do
    assert_difference('Ruoli.count') do
      post :create, ruoli: { ruolo: @ruoli.ruolo, user_id: @ruoli.user_id }
    end

    assert_redirected_to ruoli_path(assigns(:ruoli))
  end

  test "should show ruoli" do
    get :show, id: @ruoli
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ruoli
    assert_response :success
  end

  test "should update ruoli" do
    patch :update, id: @ruoli, ruoli: { ruolo: @ruoli.ruolo, user_id: @ruoli.user_id }
    assert_redirected_to ruoli_path(assigns(:ruoli))
  end

  test "should destroy ruoli" do
    assert_difference('Ruoli.count', -1) do
      delete :destroy, id: @ruoli
    end

    assert_redirected_to ruolis_path
  end
end
