class Cliente < ActiveRecord::Base
  #validates_presence_of :nombre
  validates :nombre, :presence => true
end
