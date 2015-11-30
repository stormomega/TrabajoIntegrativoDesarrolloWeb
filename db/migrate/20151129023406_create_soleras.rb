class CreateSoleras < ActiveRecord::Migration
  def change
    create_table :soleras do |t|
      t.string :denominacion
      t.integer :altura_h_mm
      t.integer :base_b_mm
      t.integer :ancho_superior_c_mm
      t.integer :rebaje_triangular_e_mm
      t.integer :rebaje_triangular_d_mm
      t.integer :largo_a_mm
      t.integer :resistencia_flexion_kn
      t.integer :peso_referencial_kg

      t.timestamps
    end
  end
end
