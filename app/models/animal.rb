class Animal < ActiveRecord::Base
  belongs_to :rescue
  has_many :adoptions
  has_one :gallery, dependent: :destroy
  validates_presence_of :rescue_id, :name

  # Paperclip
  has_attached_file :image,
                    styles: { medium: "600x600>", large: "900x900>", thumb: "150x150>" },
                    default_url: 'https://s3-us-west-2.amazonaws.com/rescue-site/missing/missing.png' 
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_attachment_file_name :image, matches: [/png\Z/, /jpe?g\Z/, /JPE?G\Z/]

  # FriendlyId
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  def slug_candidates
    [
      :name,
      [:name, :id]
    ]
  end
end
