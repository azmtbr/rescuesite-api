class AddRescueidToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :rescue, index: true, foreign_key: true
  end
end
