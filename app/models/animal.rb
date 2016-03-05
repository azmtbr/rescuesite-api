class Animal < ActiveRecord::Base
  belongs_to :rescue
  validates_presence_of :rescue_id, :name

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  def slug_candidates
    [
      :name,
      [:name, :id]
    ]
  end
end
