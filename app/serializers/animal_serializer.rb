class AnimalSerializer < ActiveModel::Serializer
  attributes :id, :name, :dob, :breed, :sex, :slug
end
  
