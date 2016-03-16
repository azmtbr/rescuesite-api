class RemoveNameFromAdoptions < ActiveRecord::Migration
  def change
    remove_column :adoptions, :name, :string
  end
end
