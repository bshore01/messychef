require 'awesome_print'
require 'pry'
require 'rubygems'
require 'nokogiri'
require 'open-uri'

binding.pry

page = Nokogiri::HTML(open("http://allrecipes.com/Recipe/Healthy-Garden-Salad/Detail.aspx?event8=1&prop24=SR_Thumb&e11=healthy&e8=Quick%20Search&event10=1&e7=Recipe&soid=sr_results_p1i1"))


recipe = Recipe.new
recipe.title = page.css('h1#itemTitle').text

recipe.save


# recipe.description = "These cupcakes are very moist and decadent. The peanut butter filling doubles as a cake filling."

# i1 = Ingredient.find_or_create_by(name: "sprouted spelt flour or whole wheat pastry flour")
# u1 = Unit.find_or_create_by(unit: "cup")
# a1 = 2.75
# recipe.recipe_ingredient_units.build(ingredient_id: i1.id, unit_id: u1.id, amount: a1)
