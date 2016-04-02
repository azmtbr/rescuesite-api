class AddAttachmentLandingImageToRescues < ActiveRecord::Migration
  def change
    change_table :rescues do |t|
      t.attachment :landing_image
    end
  end
end
