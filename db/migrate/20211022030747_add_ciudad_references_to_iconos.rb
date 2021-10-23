class AddCiudadReferencesToIconos < ActiveRecord::Migration[6.1]
  def change
      add_reference :iconos, :ciudad, foreign_key: true, index: true, null: false
  end
end
