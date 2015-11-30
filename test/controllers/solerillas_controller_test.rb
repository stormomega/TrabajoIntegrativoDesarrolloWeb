require 'test_helper'

class SolerillasControllerTest < ActionController::TestCase
  setup do
    @solerilla = solerillas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:solerillas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create solerilla" do
    assert_difference('Solerilla.count') do
      post :create, solerilla: { altura_h_mm: @solerilla.altura_h_mm, base_b_mm: @solerilla.base_b_mm, denominacion: @solerilla.denominacion, largo_l_mm: @solerilla.largo_l_mm, peso_referencial_kg: @solerilla.peso_referencial_kg, resistencia_flexion_kn: @solerilla.resistencia_flexion_kn }
    end

    assert_redirected_to solerilla_path(assigns(:solerilla))
  end

  test "should show solerilla" do
    get :show, id: @solerilla
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solerilla
    assert_response :success
  end

  test "should update solerilla" do
    patch :update, id: @solerilla, solerilla: { altura_h_mm: @solerilla.altura_h_mm, base_b_mm: @solerilla.base_b_mm, denominacion: @solerilla.denominacion, largo_l_mm: @solerilla.largo_l_mm, peso_referencial_kg: @solerilla.peso_referencial_kg, resistencia_flexion_kn: @solerilla.resistencia_flexion_kn }
    assert_redirected_to solerilla_path(assigns(:solerilla))
  end

  test "should destroy solerilla" do
    assert_difference('Solerilla.count', -1) do
      delete :destroy, id: @solerilla
    end

    assert_redirected_to solerillas_path
  end
end
