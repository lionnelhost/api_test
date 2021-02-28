class DishTypeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :label, :extra
  has_many :dishes
end
