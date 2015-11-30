json.array!(@solerillas) do |solerilla|
  json.extract! solerilla, :id, :denominacion, :largo_l_mm, :altura_h_mm, :base_b_mm, :resistencia_flexion_kn, :peso_referencial_kg
  json.url solerilla_url(solerilla, format: :json)
end
