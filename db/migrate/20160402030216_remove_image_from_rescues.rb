class RemoveImageFromRescues < ActiveRecord::Migration
  def change
    remove_column :rescues, :landing_image_file_name, :string
    remove_column :rescues, :landing_image_content_type, :string
    remove_column :rescues, :landing_image_file_size, :integer
    remove_column :rescues, :landing_image_updated_at, :datetime
  end
end
