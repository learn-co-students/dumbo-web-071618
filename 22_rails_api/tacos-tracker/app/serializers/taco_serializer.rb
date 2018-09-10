class TacoSerializer < ActiveModel::Serializer
  attributes :id, :name, :spiciness, :ingredient_names

  def ingredient_names
    self.object.ingredients.map{|i| i.name}
  end
end
