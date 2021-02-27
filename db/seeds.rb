# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# CREATE DISHES TYPE

MenuItem.delete_all
# Menu.delete_all
# Dish.delete_all
# DishType.delete_all 



# Load dish types
# load Rails.root.join("db/seeds/dish_types.rb")

# laod dishes
# load Rails.root.join("db/seeds/dish.rb")

# load Menu
# load Rails.root.join("db/seeds/menu.rb")

# load Menu Items 
load Rails.root.join("db/seeds/menu_item.rb")