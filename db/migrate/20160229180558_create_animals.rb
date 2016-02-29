class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :breed
      t.string :sex
      t.date :dob
      t.references :rescue, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
