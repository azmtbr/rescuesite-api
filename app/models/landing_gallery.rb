class LandingGallery < ActiveRecord::Base
  belongs_to :rescue

  has_many :landing_images

  accepts_nested_attributes_for :landing_images

end
