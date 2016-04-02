class RemoveLandingImageFromRescues < ActiveRecord::Migration
  def change
    remove_column :rescues, :landing_image, :attachment
  end
end
