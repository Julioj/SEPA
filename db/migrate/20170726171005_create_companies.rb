class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.integer :industryTypeId
      t.integer :employeeId
      t.string :name
      t.string :email
      t.string :address
      t.string :cuit
      t.string :comment
      t.boolean :suscription

      t.timestamps
    end
  end
end
