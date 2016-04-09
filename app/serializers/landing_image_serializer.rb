class LandingImageSerializer < ActiveModel::Serializer
  attributes :id, :thumb_url, :large_url

  def thumb_url
    object.landing_image.url :thumb
  end

  def large_url
    object.landing_image.url :large
  end

end
