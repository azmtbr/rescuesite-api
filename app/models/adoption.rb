class Adoption < ActiveRecord::Base
  belongs_to :rescue
  belongs_to :animal
  validates_presence_of :rescue_id, :animal_id, :first_name, :last_name, :email

#                         ,:age, :street_address, :mailing_address, :city,
#                         :state, :postal_code, :home_phone, :cell_phone, :work_phone, :desired_animal
end
