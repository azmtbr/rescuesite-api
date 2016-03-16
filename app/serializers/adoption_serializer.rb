class AdoptionSerializer < ActiveModel::Serializer
  attributes :id, :age, :cell_phone, :city, :created_at, :email, :first_name, :home_phone, :last_name, :mailing_address, :postal_code, :state, :street_address, :work_phone, :animal

  def animal
    AnimalSerializer.new object.animal, root: false
  end

end
