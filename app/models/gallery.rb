class Gallery < ActiveRecord::Base
  belongs_to :animal

  has_many :photos
  accepts_nested_attributes_for :photos
end
