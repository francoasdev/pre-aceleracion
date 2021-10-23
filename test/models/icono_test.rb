# == Schema Information
#
# Table name: iconos
#
#  id           :bigint           not null, primary key
#  altura       :integer
#  denominacion :string
#  historia     :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  ciudad_id    :bigint           not null
#
# Indexes
#
#  index_iconos_on_ciudad_id  (ciudad_id)
#
# Foreign Keys
#
#  fk_rails_...  (ciudad_id => ciudades.id)
#
require "test_helper"

class IconoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
