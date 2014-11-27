require 'test_helper'

class TieneTuitPalCalsControllerTest < ActionController::TestCase
  setup do
    @tiene_tuit_pal_cal = tiene_tuit_pal_cals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tiene_tuit_pal_cals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tiene_tuit_pal_cal" do
    assert_difference('TieneTuitPalCal.count') do
      post :create, tiene_tuit_pal_cal: { tiene_tuit_pal_cal_id: @tiene_tuit_pal_cal.tiene_tuit_pal_cal_id }
    end

    assert_redirected_to tiene_tuit_pal_cal_path(assigns(:tiene_tuit_pal_cal))
  end

  test "should show tiene_tuit_pal_cal" do
    get :show, id: @tiene_tuit_pal_cal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tiene_tuit_pal_cal
    assert_response :success
  end

  test "should update tiene_tuit_pal_cal" do
    patch :update, id: @tiene_tuit_pal_cal, tiene_tuit_pal_cal: { tiene_tuit_pal_cal_id: @tiene_tuit_pal_cal.tiene_tuit_pal_cal_id }
    assert_redirected_to tiene_tuit_pal_cal_path(assigns(:tiene_tuit_pal_cal))
  end

  test "should destroy tiene_tuit_pal_cal" do
    assert_difference('TieneTuitPalCal.count', -1) do
      delete :destroy, id: @tiene_tuit_pal_cal
    end

    assert_redirected_to tiene_tuit_pal_cals_path
  end
end
