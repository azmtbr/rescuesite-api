class AddRescueidToAdoptions < ActiveRecord::Migration
  def change
    add_reference :adoptions, :rescue, index: true, foreign_key: true
  end
end
