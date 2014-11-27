require 'test_helper'

class FraseCalificadorasControllerTest < ActionController::TestCase
  setup do
    @frase_calificadora = frase_calificadoras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:frase_calificadoras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create frase_calificadora" do
    assert_difference('FraseCalificadora.count') do
      post :create, frase_calificadora: { estado_animo: @frase_calificadora.estado_animo, frase: @frase_calificadora.frase, palCal_id: @frase_calificadora.palCal_id }
    end

    assert_redirected_to frase_calificadora_path(assigns(:frase_calificadora))
  end

  test "should show frase_calificadora" do
    get :show, id: @frase_calificadora
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @frase_calificadora
    assert_response :success
  end

  test "should update frase_calificadora" do
    patch :update, id: @frase_calificadora, frase_calificadora: { estado_animo: @frase_calificadora.estado_animo, frase: @frase_calificadora.frase, palCal_id: @frase_calificadora.palCal_id }
    assert_redirected_to frase_calificadora_path(assigns(:frase_calificadora))
  end

  test "should destroy frase_calificadora" do
    assert_difference('FraseCalificadora.count', -1) do
      delete :destroy, id: @frase_calificadora
    end

    assert_redirected_to frase_calificadoras_path
  end
end
