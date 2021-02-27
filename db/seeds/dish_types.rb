puts " dish type creation ......"

dishtypes = [{label: "African",extra: 0},{label: "European", extra: 500},{label: "Asiatic", extra:1000}]

dishtypes.each do |dish_type|
    DishType.create!(dish_type)
    p "."
end

p "OK."
p "dish types created"
