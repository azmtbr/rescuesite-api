class AddFirstNameToAdoptions < ActiveRecord::Migration
  def change
    add_column :adoptions, :first_name, :string
  end
end
