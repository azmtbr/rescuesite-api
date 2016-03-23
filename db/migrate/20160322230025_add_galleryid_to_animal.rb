class AddGalleryidToAnimal < ActiveRecord::Migration
  def change
    add_column :animals, :gallery_id, :integer
  end
end
