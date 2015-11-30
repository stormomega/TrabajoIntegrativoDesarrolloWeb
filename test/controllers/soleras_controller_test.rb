require 'test_helper'

class SolerasControllerTest < ActionController::TestCase
  setup do
    @solera = soleras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:soleras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create solera" do
    assert_difference('Solera.count') do
      post :create, solera: { altura_h_mm: @solera.altura_h_mm, ancho_superior_c_mm: @solera.ancho_superior_c_mm, base_b_mm: @solera.base_b_mm, denominacion: @solera.denominacion, largo_a_mm: @solera.largo_a_mm, peso_referencial_kg: @solera.peso_referencial_kg, rebaje_triangular_d_mm: @solera.rebaje_triangular_d_mm, rebaje_triangular_e_mm: @solera.rebaje_triangular_e_mm, resistencia_flexion_kn: @solera.resistencia_flexion_kn }
    end

    assert_redirected_to solera_path(assigns(:solera))
  end

  test "should show solera" do
    get :show, id: @solera
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solera
    assert_response :success
  end

  test "should update solera" do
    patch :update, id: @solera, solera: { altura_h_mm: @solera.altura_h_mm, ancho_superior_c_mm: @solera.ancho_superior_c_mm, base_b_mm: @solera.base_b_mm, denominacion: @solera.denominacion, largo_a_mm: @solera.largo_a_mm, peso_referencial_kg: @solera.peso_referencial_kg, rebaje_triangular_d_mm: @solera.rebaje_triangular_d_mm, rebaje_triangular_e_mm: @solera.rebaje_triangular_e_mm, resistencia_flexion_kn: @solera.resistencia_flexion_kn }
    assert_redirected_to solera_path(assigns(:solera))
  end

  test "should destroy solera" do
    assert_difference('Solera.count', -1) do
      delete :destroy, id: @solera
    end

    assert_redirected_to soleras_path
  end
end
