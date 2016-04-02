class AddAttachmentLandingImageToLandingImages < ActiveRecord::Migration
  def self.up
    change_table :landing_images do |t|
      t.attachment :landing_image
    end
  end

  def self.down
    remove_attachment :landing_images, :landing_image
  end
end
