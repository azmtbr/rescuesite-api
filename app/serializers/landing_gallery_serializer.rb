class LandingGallerySerializer < ActiveModel::Serializer
  attributes :id, :langing_images

  def photos
    ActiveModel::ArraySerializer.new(object.landing_images, each_serializer: LandingImageSerializer)
  end
end
