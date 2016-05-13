class AnimalSerializer < ActiveModel::Serializer
  attributes :id, :rescue_id, :thumbnail_url, :large_url, :medium_url, :name, :dob, :breed, :sex, :short_bio, :long_bio, :slug, :gallery_id

  def thumbnail_url
    object.image.url :thumb
  end

  def medium_url
    object.image.url :medium
  end

  def large_url
    object.image.url :large
  end

  def gallery_id
    object.gallery.try :id
  end
end
