class RemoveRescueidFromGallery < ActiveRecord::Migration
  def change
    remove_reference :galleries, :rescue, index: true, foreign_key: true
  end
end
