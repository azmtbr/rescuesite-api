class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :small_url, :medium_url, :large_url

  def small_url
    object.gallery_image.url :small
  end

  def medium_url
    object.gallery_image.url :medium
  end

  def large_url
    object.gallery_image.url :large
  end


end
