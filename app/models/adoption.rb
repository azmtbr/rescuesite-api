class Adoption < ActiveRecord::Base
  belongs_to :rescue
  validates_presence_of :rescue_id, :name, :email

#                         ,:age, :street_address, :mailing_address, :city,
#                         :state, :postal_code, :home_phone, :cell_phone, :work_phone, :desired_animal
end
