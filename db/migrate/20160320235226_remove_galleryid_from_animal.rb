class RemoveGalleryidFromAnimal < ActiveRecord::Migration
  def change
    remove_reference :animals, :gallery, index: true, foreign_key: true
  end
end
