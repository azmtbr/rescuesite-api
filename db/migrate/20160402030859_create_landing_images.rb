class CreateLandingImages < ActiveRecord::Migration
  def change
    create_table :landing_images do |t|
      t.references :landing_gallery, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
