class Rescue < ActiveRecord::Base
  validates_presence_of :name, :email
  has_many :animals
  has_many :adoptions

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  def slug_candidates
    [ :name, [:name, :id] ]
  end
end
