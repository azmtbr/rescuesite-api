class Rescue < ActiveRecord::Base
  validates_presence_of :name
  has_many :animals
end
