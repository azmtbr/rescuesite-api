class AddGalleryToRescue < ActiveRecord::Migration
  def change
    add_column :rescues, :landing_gallery, :integer
  end
end
