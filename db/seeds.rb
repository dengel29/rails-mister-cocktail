# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

source = open("http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read
print source
source = JSON.parse(source)
source = source["drinks"].map { |i| i["strIngredient1"]}
source.each do |i|
  Ingredient.create(name: i)
end


# # fh = source.open
# # next = fh.read
# # things = fh.read

# ingredients = [
#   {name: things},
#   {name: "Wiskey"},
#   {name: "Coke"},
#   {name: "Vodka"},
#   {name: "Tonic"},
# ]

# Ingredient.create(ingredients)
