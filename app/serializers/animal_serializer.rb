class AnimalSerializer < ActiveModel::Serializer
  attributes :id, :thumbnail_url, :original_url, :medium_url, :name, :dob, :breed, :sex, :slug

  def thumbnail_url
    object.image.url :thumb
  end

  def medium_url
    object.image.url :medium
  end

  def original_url
    object.image.url :original
  end
end
