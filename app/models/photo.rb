class Photo < ActiveRecord::Base
  belongs_to :gallery
  validates_presence_of :gallery_id

  # Paperclip
  has_attached_file :gallery_image, styles: { medium: "300x300>", large: "700x700>" }, default_url: ->(attachment) { ActionController::Base.helpers.asset_path('missing.png') }
  validates_attachment_content_type :gallery_image, content_type: /\Aimage\/.*\Z/
  validates_attachment_file_name :gallery_image, matches: [/png\Z/, /jpe?g\Z/, /JPE?G\Z/]

end
