class CreateOfertas < ActiveRecord::Migration[6.1]
  def change
    create_table :ofertas do |t|
      t.string :cargo
      t.text :descripcion
      t.integer :cant_vacantes
      t.integer :salario_min
      t.integer :salario_max
      t.datetime :fecha_inicio
      t.text :modalidad
      t.references :empresa, null: false, foreign_key: true, default: 1
      t.references :region, null: false, foreign_key: true, default: 1
      t.timestamps
    end
  end
end
