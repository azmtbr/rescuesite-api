class CreateRescues < ActiveRecord::Migration
  def change
    create_table :rescues do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
