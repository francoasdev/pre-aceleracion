class CreateCiudades < ActiveRecord::Migration[6.1]
  def change
    create_table :ciudades do |t|
      t.string :denominacion
      t.integer :habitantes
      t.float :superficie

      t.timestamps
    end
  end
end
