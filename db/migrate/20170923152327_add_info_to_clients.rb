class AddInfoToClients < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :fantasy_name, :string
    add_column :companies, :localidadId, :int
    add_column :companies, :party, :string
    add_column :companies, :postal_code, :string
    add_column :companies, :cuit, :string
    add_column :companies, :tlf, :string
    add_column :companies, :internal_tlf, :string
    add_column :companies, :contact, :string
  end
end
