class Animal < ActiveRecord::Base
  belongs_to :rescue
  has_many :adoptions
  has_one :gallery, dependent: :destroy
  validates_presence_of :rescue_id, :name

  # Paperclip
  has_attached_file :image,
                    styles: { medium: "300x300>", large: "600x600>", thumb: "100x100>" },
                    default_url: ->(attachment) { ActionController::Base.helpers.asset_path('missing.png') }
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
