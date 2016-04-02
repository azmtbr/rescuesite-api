class LandingImage < ActiveRecord::Base
  belongs_to :landing_gallery
  validates_presence_of :landing_gallery_id


  # Paperclip
  has_attached_file :landing_image, styles: { large: "900x900>"}, default_url: ->(attachment) { ActionController::Base.helpers.asset_path('missing.png') }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_attachment_file_name :image, matches: [/png\Z/, /jpe?g\Z/, /JPE?G\Z/]

end
