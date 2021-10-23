class CreateIconos < ActiveRecord::Migration[6.1]
  def change
    create_table :iconos do |t|
      t.string :denominacion
      t.integer :altura
      t.text :historia

      t.timestamps
    end
  end
end
