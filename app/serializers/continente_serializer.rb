# == Schema Information
#
# Table name: continentes
#
#  id           :bigint           not null, primary key
#  denominacion :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class ContinenteSerializer < ActiveModel::Serializer
  attributes :id, :denominacion
  has_many :ciudades
  has_many :iconos, through: :ciudades
end
