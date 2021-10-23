# == Schema Information
#
# Table name: ciudades
#
#  id            :bigint           not null, primary key
#  denominacion  :string
#  habitantes    :integer
#  superficie    :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  continente_id :bigint           not null
#
# Indexes
#
#  index_ciudades_on_continente_id  (continente_id)
#
# Foreign Keys
#
#  fk_rails_...  (continente_id => continentes.id)
#
class Ciudad < ApplicationRecord
    has_many :iconos
    belongs_to :continente
    has_one_attached :image
end
