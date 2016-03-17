class AnimalSerializer < ActiveModel::Serializer
  attributes :id, :thumbnail_url, :original_url, :name, :dob, :breed, :sex, :slug

  def thumbnail_url
    object.image.url :thumb
  end

  def original_url
    object.image.url :original
  end
end
