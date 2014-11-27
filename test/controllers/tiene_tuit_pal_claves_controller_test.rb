require 'test_helper'

class TieneTuitPalClavesControllerTest < ActionController::TestCase
  setup do
    @tiene_tuit_pal_clafe = tiene_tuit_pal_claves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tiene_tuit_pal_claves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tiene_tuit_pal_clafe" do
    assert_difference('TieneTuitPalClave.count') do
      post :create, tiene_tuit_pal_clafe: { tiene_tuit_pal_clave_id: @tiene_tuit_pal_clafe.tiene_tuit_pal_clave_id }
    end

    assert_redirected_to tiene_tuit_pal_clafe_path(assigns(:tiene_tuit_pal_clafe))
  end

  test "should show tiene_tuit_pal_clafe" do
    get :show, id: @tiene_tuit_pal_clafe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tiene_tuit_pal_clafe
    assert_response :success
  end

  test "should update tiene_tuit_pal_clafe" do
    patch :update, id: @tiene_tuit_pal_clafe, tiene_tuit_pal_clafe: { tiene_tuit_pal_clave_id: @tiene_tuit_pal_clafe.tiene_tuit_pal_clave_id }
    assert_redirected_to tiene_tuit_pal_clafe_path(assigns(:tiene_tuit_pal_clafe))
  end

  test "should destroy tiene_tuit_pal_clafe" do
    assert_difference('TieneTuitPalClave.count', -1) do
      delete :destroy, id: @tiene_tuit_pal_clafe
    end

    assert_redirected_to tiene_tuit_pal_claves_path
  end
end
