class RemoveGalleryFromAnimal < ActiveRecord::Migration
  def change
    remove_column :animals, :gallery, :integer
  end
end
