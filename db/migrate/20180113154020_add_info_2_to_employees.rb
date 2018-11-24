class AddInfo2ToEmployees < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :especializacion, :string
    add_column :employees, :cellphone, :string
  end
end
