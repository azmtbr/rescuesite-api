class GallerySerializer < ActiveModel::Serializer
  attributes :id, :animal, :photos

  def animal
    AnimalSerializer.new object.animal, root: false
  end
end
