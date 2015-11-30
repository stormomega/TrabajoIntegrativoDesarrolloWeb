class CreateSolerillas < ActiveRecord::Migration
  def change
    create_table :solerillas do |t|
      t.string :denominacion
      t.integer :largo_l_mm
      t.integer :altura_h_mm
      t.integer :base_b_mm
      t.integer :resistencia_flexion_kn
      t.integer :peso_referencial_kg

      t.timestamps
    end
  end
end
