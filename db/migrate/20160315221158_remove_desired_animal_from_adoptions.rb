class RemoveDesiredAnimalFromAdoptions < ActiveRecord::Migration
  def change
    remove_column :adoptions, :desired_animal, :string
  end
end
