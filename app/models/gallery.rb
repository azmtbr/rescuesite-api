class Gallery < ActiveRecord::Base
  belongs_to :animal
  belongs_to :rescue

  has_many :photos
  accepts_nested_attributes_for :photos
end
