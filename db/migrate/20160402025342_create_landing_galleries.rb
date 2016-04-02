class CreateLandingGalleries < ActiveRecord::Migration
  def change
    create_table :landing_galleries do |t|

      t.timestamps null: false
    end
  end
end
