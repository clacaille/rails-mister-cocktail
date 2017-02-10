require 'json'
require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Ingredient.destroy_all
Cocktail.destroy_all

# url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# drinks_serialized = open(url).read
# json = JSON.parse(drinks_serialized)
# drink = json["drinks"]

# drink.each do |ingredient|
#   Ingredient.create!(name: ingredient["strIngredient1"])
# end

url = 'http://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail'
drinks_serialized = open(url).read
json = JSON.parse(drinks_serialized)
drink = json["drinks"]

drink.first(6).each do |cocktail|
  c = Cocktail.create!(name: cocktail["strDrink"])
end


# c = Cocktail.new(name: "name")
# c.remote_photo_url = "http://www.thecocktaildb.com/images/media/drink/qyyvtu1468878544.jpg"
# c.save

# url = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"
# cocktail = Cocktail.new(name: 'NES')
# cocktail.remote_photo_url = url
# cocktail.save
