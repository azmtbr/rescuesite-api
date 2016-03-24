class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :medium_url, :large_url

  def medium_url
    object.gallery_image.url :medium
  end

  def large_url
    object.gallery_image.url :large
  end


end
