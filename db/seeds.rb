# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database now..."
Cocktail.destroy_all
puts "Database clean"



puts "seeding the db!"
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
puts "finished seeding, ingredients added. "



# url = https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list


# creating cocktails 
# puts "mixing cocktails"
# 10.times do
#     Cocktail.create!(
#         name: Faker::Beer.style
#         )
#     end
# puts "#{Ingredient.legth} cocktails ready "

puts 'Creating cocktails ...'
Cocktail.create(name: 'Negroni', image_url:"https://www.thecocktaildb.com/images/media/drink/qgdu971561574065.jpg")
Cocktail.create(name: 'Cosmopolitan', image_url:"https://www.thecocktaildb.com/images/media/drink/upxxpq1439907580.jpg")
Cocktail.create(name: 'Sex On The Beach', image_url:"https://www.thecocktaildb.com/images/media/drink/lijtw51551455287.jpg")
puts 'Cocktails created ...'