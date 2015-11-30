class CreateDireccions < ActiveRecord::Migration
  def change
    create_table :direccions do |t|
      t.string :calle
      t.integer :numero
      t.string :comuna
      t.string :ciudad
      t.string :region
      t.string :pais
      t.references :trabajador, index: true

      t.timestamps
    end
  end
end
