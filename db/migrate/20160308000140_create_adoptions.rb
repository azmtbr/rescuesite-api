class CreateAdoptions < ActiveRecord::Migration
  def change
    create_table :adoptions do |t|
      t.string :name
      t.string :email
      t.string :desired_animal
      t.string :street_address
      t.string :mailing_address
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :home_phone
      t.string :cell_phone
      t.string :work_phone
      t.boolean :age

      t.timestamps null: false
    end
  end
end
