class LandingImageSerializer < ActiveModel::Serializer
  attributes :id, :large_url

  def large_url
    object.gallery_image.url :large
  end

end
