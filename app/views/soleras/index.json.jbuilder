json.array!(@soleras) do |solera|
  json.extract! solera, :id, :denominacion, :altura_h_mm, :base_b_mm, :ancho_superior_c_mm, :rebaje_triangular_e_mm, :rebaje_triangular_d_mm, :largo_a_mm, :resistencia_flexion_kn, :peso_referencial_kg
  json.url solera_url(solera, format: :json)
end
