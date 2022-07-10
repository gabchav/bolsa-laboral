class AddNameToPersona < ActiveRecord::Migration[6.1]
  def change
    add_column :personas, :nombre, :string
    add_column :personas, :fnac, :datetime
    add_column :personas, :genero_id, :integer, default: 1
    add_column :personas, :telefono, :integer
    add_column :personas, :curriculum, :string, default: false
  end
end
