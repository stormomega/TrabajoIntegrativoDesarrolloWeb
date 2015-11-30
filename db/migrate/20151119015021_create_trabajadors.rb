class CreateTrabajadors < ActiveRecord::Migration
  def change
    create_table :trabajadors do |t|
      t.integer :rut
      t.string :nombres
      t.string :apellidopaterno
      t.string :apellidomaterno
      t.date :fechanacimineto
      t.string :estadocivil
      t.string :sexo
      t.integer :celular
      t.string :correo
      t.string :cargo

      t.timestamps
    end
  end
end
