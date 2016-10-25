class Armoury < ActiveRecord::Base
  belongs_to :hero
  belongs_to :weapon
end
