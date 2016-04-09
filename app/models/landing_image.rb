class LandingImage < ActiveRecord::Base
  belongs_to :landing_gallery
  validates_presence_of :landing_gallery_id


  # Paperclip
  has_attached_file :landing_image, styles: { thumb: "150x150>", large: "900x900>"}, default_url: ->(attachment) { ActionController::Base.helpers.asset_path('missing.png') }
  validates_attachment_content_type :landing_image, content_type: /\Aimage\/.*\Z/
  validates_attachment_file_name :landing_image, matches: [/png\Z/, /jpe?g\Z/, /JPE?G\Z/]

end
