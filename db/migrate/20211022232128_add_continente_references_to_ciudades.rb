class AddContinenteReferencesToCiudades < ActiveRecord::Migration[6.1]
  def change
    add_reference :ciudades, :continente, foreign_key: true, index: true, null: false
  end
end
