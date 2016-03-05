class AddEmailToRescues < ActiveRecord::Migration
  def change
    add_column :rescues, :email, :string
    add_index :rescues, :email, unique: true
  end
end
