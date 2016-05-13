class AddBioToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :short_bio, :string
    add_column :animals, :long_bio, :text
  end
end
