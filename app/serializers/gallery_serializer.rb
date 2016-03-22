class GallerySerializer < ActiveModel::Serializer
  attributes :id, :photos

  def photos
    ActiveModel::ArraySerializer.new(object.photos, each_serializer: PhotoSerializer)
  end

end
