class AddLastNameToAdoptions < ActiveRecord::Migration
  def change
    add_column :adoptions, :last_name, :string
  end
end
