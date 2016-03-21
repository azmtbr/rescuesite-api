class AddGalleryidToAnimal < ActiveRecord::Migration
  def change
    add_reference :animals, :gallery, index: true, foreign_key: true
  end
end
