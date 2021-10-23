# == Schema Information
#
# Table name: continentes
#
#  id           :bigint           not null, primary key
#  denominacion :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Continente < ApplicationRecord
    has_many :iconos, through: :ciudades
    has_many :ciudades
    has_one_attached :image
end
