class Hero < ActiveRecord::Base

  has_many(:films)
  has_many(:weapons, {through: :armourys})

end
