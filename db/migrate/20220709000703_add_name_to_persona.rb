class AddNameToPersona < ActiveRecord::Migration[6.1]
  def change
    add_column :personas, :nombre, :string
    add_column :personas, :fnac, :datetime
    add_column :personas, :genero, :string, default: false
    add_column :personas, :telefono, :integer
    add_column :personas, :curriculum, :boolean, default: false
  end
end
