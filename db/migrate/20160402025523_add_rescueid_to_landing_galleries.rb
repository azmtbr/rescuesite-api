class AddRescueidToLandingGalleries < ActiveRecord::Migration
  def change
    add_reference :landing_galleries, :rescue, index: true, foreign_key: true
  end
end
