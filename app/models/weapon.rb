class Weapon < ActiveRecord::Base
  has_many(:armourys)
  has_many(:heros, {through: :heros})
end
