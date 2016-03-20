class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :medium_url

  def medium_url
    object.image.url :medium
  end
end
