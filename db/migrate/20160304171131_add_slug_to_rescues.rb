class AddSlugToRescues < ActiveRecord::Migration
  def change
    add_column :rescues, :slug, :string
    add_index :rescues, :slug, unique: true
  end
end
