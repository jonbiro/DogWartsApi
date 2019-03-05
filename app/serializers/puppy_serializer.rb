class PuppySerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :image1, :image2, :house
  # belongs_to :house
  #
  def house
    self.object.house.name
  end
end
