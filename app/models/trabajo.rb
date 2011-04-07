class Trabajo < ActiveRecord::Base
  has_many :tareas
  validates :codigo, :presence => true, :uniqueness => true
  validates :descripcion, :presence => true
end
