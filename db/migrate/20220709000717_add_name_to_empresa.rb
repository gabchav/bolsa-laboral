class AddNameToEmpresa < ActiveRecord::Migration[6.1]
  def change
    add_column :empresas, :razon_social, :string
    add_column :empresas, :representante, :string
    add_column :empresas, :direccion, :string
    add_column :empresas, :telefono, :integer
  end
end
