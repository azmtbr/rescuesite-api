class LandingImageSerializer < ActiveModel::Serializer
  attributes :id, :large_url

  def large_url
    object.landing_image.url :large
  end

end
