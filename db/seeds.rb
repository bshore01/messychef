User.destroy_all
Cookbook.destroy_all
RecipeCookbook.destroy_all
Recipe.destroy_all
Direction.destroy_all
RecipeIngredientUnit.destroy_all
Ingredient.destroy_all
Unit.destroy_all

puts "Creating users..."

  natalie = User.create(first_name: "Natalie", last_name: "Arellano", email: "natalie.arellano@gmail.com")
  ben = User.create(first_name: "Ben", last_name: "Shore", email: "ben.shore@gmail.com")
  kris = User.create(first_name: "Kris", last_name: "Croes", email: "kris.croes@gmail.com")
  ana = User.create(first_name: "Ana", last_name: "Perez", email: "ana.perez@gmail.com")


puts "Creating Recipe #1: Chocolate Peanut Butter Mousse–Filled Cupcakes"

puts "Creating ingredients..."

  recipe = Recipe.new
  recipe.title = "Chocolate Peanut Butter Mousse–Filled Cupcakes"
  recipe.description = "These cupcakes are very moist and decadent. The peanut butter filling doubles as a cake filling."

  i1 = Ingredient.find_or_create_by(name: "sprouted spelt flour or whole wheat pastry flour")
  u1 = Unit.find_or_create_by(unit: "cup")
  a1 = 2.75
  recipe.recipe_ingredient_units.build(ingredient_id: i1.id, unit_id: u1.id, amount: a1)

  i2 = Ingredient.find_or_create_by(name: "baking powder")
  u2 = Unit.find_or_create_by(unit: "teaspoon")
  a2 = 1
  recipe.recipe_ingredient_units.build(ingredient_id: i2.id, unit_id: u2.id, amount: a2)

  i3 = Ingredient.find_or_create_by(name: "baking soda")
  u3 = Unit.find_or_create_by(unit: "teaspoon")
  a3 = 2
  recipe.recipe_ingredient_units.build(ingredient_id: i3.id, unit_id: u3.id, amount: a3)

  i4 = Ingredient.find_or_create_by(name: "sea salt")
  u4 = Unit.find_or_create_by(unit: "teaspoon")
  a4 = 0.75
  recipe.recipe_ingredient_units.build(ingredient_id: i4.id, unit_id: u4.id, amount: a4)

  i5 = Ingredient.find_or_create_by(name: "unsweetened cocoa powder, sifted")
  u5 = Unit.find_or_create_by(unit: "cup")
  a5 = 2/3.0
  recipe.recipe_ingredient_units.build(ingredient_id: i5.id, unit_id: u5.id, amount: a5)

  i6 = Ingredient.find_or_create_by(name: "canola oil")
  u6 = Unit.find_or_create_by(unit: "cup")
  a6 = 1/2.0
  recipe.recipe_ingredient_units.build(ingredient_id: i6.id, unit_id: u6.id, amount: a6)

  i7 = Ingredient.find_or_create_by(name: "light agave nectar")
  u7 = Unit.find_or_create_by(unit: "cup")
  a7 = 1.25
  recipe.recipe_ingredient_units.build(ingredient_id: i7.id, unit_id: u7.id, amount: a7)

  i8 = Ingredient.find_or_create_by(name: "soy milk")
  u8 = Unit.find_or_create_by(unit: "cup")
  a8 = 1
  recipe.recipe_ingredient_units.build(ingredient_id: i8.id, unit_id: u8.id, amount: a8)

  i9 = Ingredient.find_or_create_by(name: "firm silken tofu")
  u9 = Unit.find_or_create_by(unit: "cup")
  a9 = 1/2.0
  recipe.recipe_ingredient_units.build(ingredient_id: i9.id, unit_id: u9.id, amount: a9)

  i10 = Ingredient.find_or_create_by(name: "vanilla extract")
  u10 = Unit.find_or_create_by(unit: "tablespoon")
  a10 = 1
  recipe.recipe_ingredient_units.build(ingredient_id: i10.id, unit_id: u10.id, amount: a10)

  i11 = Ingredient.find_or_create_by(name: "raw apple cider vinegar")
  u11 = Unit.find_or_create_by(unit: "tablespoon")
  a11 = 2
  recipe.recipe_ingredient_units.build(ingredient_id: i11.id, unit_id: u11.id, amount: a11)

  i12 = Ingredient.find_or_create_by(name: "light firm silken tofu")
  u12 = Unit.find_or_create_by(unit: "ounces")
  a12 = 12
  recipe.recipe_ingredient_units.build(ingredient_id: i12.id, unit_id: u12.id, amount: a12)

  i13 = Ingredient.find_or_create_by(name: "light agave nectar")
  u13 = Unit.find_or_create_by(unit: "cup")
  a13 = 1/2.0
  recipe.recipe_ingredient_units.build(ingredient_id: i13.id, unit_id: u13.id, amount: a13)

  i14 = Ingredient.find_or_create_by(name: "smooth peanut butter")
  u14 = Unit.find_or_create_by(unit: "cup")
  a14 = 1
  recipe.recipe_ingredient_units.build(ingredient_id: i14.id, unit_id: u14.id, amount: a14)

  i15 = Ingredient.find_or_create_by(name: "vanilla extract")
  u15 = Unit.find_or_create_by(unit: "tablespoon")
  a15 = 1
  recipe.recipe_ingredient_units.build(ingredient_id: i15.id, unit_id: u15.id, amount: a15)

  i16 = Ingredient.find_or_create_by(name: "sea salt")
  u16 = Unit.find_or_create_by(unit: "ounces")
  a16 = 1/2.0
  recipe.recipe_ingredient_units.build(ingredient_id: i16.id, unit_id: u16.id, amount: a16)

puts "Creating directions..."

  recipe.directions.build(sequence: 1,  description: "Preheat the oven to 325°F. Line 2 cupcake pans with 18 paper liners and fill the empty cups half full of water to prevent scorching.")
  recipe.directions.build(sequence: 2,  description: "To make the cupcakes, mix the flour, baking powder, baking soda, salt, and cocoa powder together in a large bowl.")
  recipe.directions.build(sequence: 3,  description: "In a food processor, blend the canola oil, agave nectar, soy milk, tofu, vanilla extract, and vinegar, scraping down the bowl often. Blend until very smooth, with no chunks of tofu visible, about 2 to 3 minutes.")
  recipe.directions.build(sequence: 4,  description: "Combine the wet ingredients with the dry ingredients. Stir well and spoon into the prepared cupcake pan, leaving some room at the top of each cup.")
  recipe.directions.build(sequence: 5,  description: "Bake for 20 minutes, or until a toothpick inserted into the center of a cupcake comes out clean.")
  recipe.directions.build(sequence: 6,  description: "Remove the cupcakes from the pan and place on a cooling rack. Cool completely before filling and frosting.")
  recipe.directions.build(sequence: 7,  description: "To prepare the filling, blend the tofu in a food processor until very smooth and creamy, approximately 1 to 2 minutes.")
  recipe.directions.build(sequence: 8,  description: "Add the agave nectar and blend again.")
  recipe.directions.build(sequence: 9,  description: "Add the peanut butter, vanilla extract, and salt and blend thoroughly until very light and smooth.")
  recipe.directions.build(sequence: 10, description: "Refrigerate for 1 to 2 hours to firm before filling the cupcakes.")
  recipe.directions.build(sequence: 11, description: "Add the peanut butter, vanilla extract, and salt and blend thoroughly until very light and smooth.")
  recipe.directions.build(sequence: 12, description: "To assemble the cupcakes, you will need a pastry bag fitted with a large, plain smooth tip. Fill the pastry bag with peanut butter mousse and insert the tip halfway into the top of a cupcake.")
  recipe.directions.build(sequence: 13, description: "Squeeze filling inside each cupcake just until it starts to expand.")
  recipe.directions.build(sequence: 14, description: "Next frost the tops. If the frosting is too firm, heat in the microwave for a few seconds to soften it up. Spread the ganache evenly over the tops of the cupcakes.")
  recipe.directions.build(sequence: 15, description: "Let the cupcakes sit in the refrigerator until ready to serve. Garnish with peanuts if desired.")

  recipe.save



puts "Creating Recipe #2: Chocolate Fudge Cake"

puts "Creating ingredients..."

  recipe = Recipe.new
  recipe.title = "Chocolate Fudge Cake"
  recipe.description = "You don't have to be a vegan to really, really enjoy this cake!"

  i1 = Ingredient.find_or_create_by(name: "flour")
  u1 = Unit.find_or_create_by(unit: "cup")
  a1 = 2.5
  recipe.recipe_ingredient_units.build(ingredient_id: i1.id, unit_id: u1.id, amount: a1)

  i2 = Ingredient.find_or_create_by(name: "cocoa")
  u2 = Unit.find_or_create_by(unit: "cup")
  a2 = 0.5
  recipe.recipe_ingredient_units.build(ingredient_id: i2.id, unit_id: u2.id, amount: a2)

  i3 = Ingredient.find_or_create_by(name: "baking powder")
  u3 = Unit.find_or_create_by(unit: "tablespoon")
  a3 = 2
  recipe.recipe_ingredient_units.build(ingredient_id: i3.id, unit_id: u3.id, amount: a3)

  i4 = Ingredient.find_or_create_by(name: "sugar")
  u4 = Unit.find_or_create_by(unit: "cup")
  a4 = 1.25
  recipe.recipe_ingredient_units.build(ingredient_id: i4.id, unit_id: u4.id, amount: a4)

  i5 = Ingredient.find_or_create_by(name: "vanilla extract")
  u5 = Unit.find_or_create_by(unit: "teaspoon")
  a5 = 0.5
  recipe.recipe_ingredient_units.build(ingredient_id: i5.id, unit_id: u5.id, amount: a5)

  i6 = Ingredient.find_or_create_by(name: "sunflower oil")
  u6 = Unit.find_or_create_by(unit: "tablespoon")
  a6 = 9
  recipe.recipe_ingredient_units.build(ingredient_id: i6.id, unit_id: u6.id, amount: a6)

  i7 = Ingredient.find_or_create_by(name: "water")
  u7 = Unit.find_or_create_by(unit: "cup")
  a7 = 1.5
  recipe.recipe_ingredient_units.build(ingredient_id: i7.id, unit_id: u7.id, amount: a7)

  i8 = Ingredient.find_or_create_by(name: "margarine")
  u8 = Unit.find_or_create_by(unit: "cup")
  a8 = 0.25
  recipe.recipe_ingredient_units.build(ingredient_id: i8.id, unit_id: u8.id, amount: a8)

  i9 = Ingredient.find_or_create_by(name: "water")
  u9 = Unit.find_or_create_by(unit: "tablespoon")
  a9 = 3
  recipe.recipe_ingredient_units.build(ingredient_id: i9.id, unit_id: u9.id, amount: a9)

  i10 = Ingredient.find_or_create_by(name: "icing sugar")
  u10 = Unit.find_or_create_by(unit: "cup")
  a10 = 2.25
  recipe.recipe_ingredient_units.build(ingredient_id: i10.id, unit_id: u10.id, amount: a10)

  i11 = Ingredient.find_or_create_by(name: "cocoa")
  u11 = Unit.find_or_create_by(unit: "tablespoon")
  a11 = 2
  recipe.recipe_ingredient_units.build(ingredient_id: i11.id, unit_id: u11.id, amount: a11)

puts "Creating directions..."

  recipe.directions.build(sequence: 1,  description: "Pre-Heat oven to 325 F.")
  recipe.directions.build(sequence: 2,  description: "Mix the first three ingredients in a large bowl.")
  recipe.directions.build(sequence: 3,  description: "Add the sugar. Mix well.")
  recipe.directions.build(sequence: 4,  description: "Add the rest of the cake ingredients into the bowl.")
  recipe.directions.build(sequence: 5,  description: "Pour the batter into an 8 inch round pan. Bake for approximately 45 min. When done, let cool for 5 min.")
  recipe.directions.build(sequence: 6,  description: "Remove cake from pan and prepare it for icing.")
  recipe.directions.build(sequence: 7,  description: "In a small saucepan, melt margarine along with water.")
  recipe.directions.build(sequence: 8,  description: "Add the rest of the ingredients. Beat until smooth and shiny.")
  recipe.directions.build(sequence: 9,  description: "Let cool.")

  recipe.save



puts "Creating Recipe #3: Panzanella"

puts "Creating ingredients..."

  recipe = Recipe.new
  recipe.title = "Panzanella"
  recipe.description = "Great recipe! Fun to make and delicious."

  i1 = Ingredient.find_or_create_by(name: "olive oil")
  u1 = Unit.find_or_create_by(unit: "tablespoon")
  a1 = 3
  recipe.recipe_ingredient_units.build(ingredient_id: i1.id, unit_id: u1.id, amount: a1)

  i2 = Ingredient.find_or_create_by(name: "small French bread or boule, cut into 1-inch cubes")
  u2 = Unit.find_or_create_by(unit: "cup")
  a2 = 6
  recipe.recipe_ingredient_units.build(ingredient_id: i2.id, unit_id: u2.id, amount: a2)

  i3 = Ingredient.find_or_create_by(name: "kosher salt")
  u3 = Unit.find_or_create_by(unit: "teaspoon")
  a3 = 1
  recipe.recipe_ingredient_units.build(ingredient_id: i3.id, unit_id: u3.id, amount: a3)

  i4 = Ingredient.find_or_create_by(name: "large, ripe tomatoes, cut into 1-inch cubes")
  a4 = 2
  recipe.recipe_ingredient_units.build(ingredient_id: i4.id, amount: a4)

  i5 = Ingredient.find_or_create_by(name: "hothouse cucumber, unpeeled, seeded, and sliced 1/2-inch thick")
  a5 = 1
  recipe.recipe_ingredient_units.build(ingredient_id: i5.id, amount: a5)

  i6 = Ingredient.find_or_create_by(name: "red bell pepper, seeded and cut into 1-inch cubes")
  a6 = 1
  recipe.recipe_ingredient_units.build(ingredient_id: i6.id, amount: a6)

  i7 = Ingredient.find_or_create_by(name: "yellow bell pepper, seeded and cut into 1-inch cubes")
  a7 = 1
  recipe.recipe_ingredient_units.build(ingredient_id: i7.id, amount: a7)

  i8 = Ingredient.find_or_create_by(name: "red onion, cut in 1/2 and thinly sliced")
  a8 = 0.5
  recipe.recipe_ingredient_units.build(ingredient_id: i8.id, amount: a8)

  i9 = Ingredient.find_or_create_by(name: "large basil leaves, coarsely chopped")
  a9 = 20
  recipe.recipe_ingredient_units.build(ingredient_id: i9.id, amount: a9)

  i10 = Ingredient.find_or_create_by(name: "capers, drained")
  u10 = Unit.find_or_create_by(unit: "tablespoon")
  a10 = 3
  recipe.recipe_ingredient_units.build(ingredient_id: i10.id, unit_id: u10.id, amount: a10)

  i11 = Ingredient.find_or_create_by(name: "finely minced garlic")
  u11 = Unit.find_or_create_by(unit: "teaspoon")
  a11 = 1
  recipe.recipe_ingredient_units.build(ingredient_id: i11.id, unit_id: u11.id, amount: a11)

  i12 = Ingredient.find_or_create_by(name: "Dijon mustard")
  u12 = Unit.find_or_create_by(unit: "teaspoon")
  a12 = 0.5
  recipe.recipe_ingredient_units.build(ingredient_id: i12.id, unit_id: u12.id, amount: a12)

  i13 = Ingredient.find_or_create_by(name: "Champagne vinegar")
  u13 = Unit.find_or_create_by(unit: "tablespoon")
  a13 = 3
  recipe.recipe_ingredient_units.build(ingredient_id: i13.id, unit_id: u13.id, amount: a13)

  i14 = Ingredient.find_or_create_by(name: "olive oil")
  u14 = Unit.find_or_create_by(unit: "cup")
  a14 = 0.5
  recipe.recipe_ingredient_units.build(ingredient_id: i14.id, unit_id: u14.id, amount: a14)

  i15 = Ingredient.find_or_create_by(name: "kosher salt")
  u15 = Unit.find_or_create_by(unit: "teaspoon")
  a15 = 0.5
  recipe.recipe_ingredient_units.build(ingredient_id: i15.id, unit_id: u15.id, amount: a15)

  i16 = Ingredient.find_or_create_by(name: "freshly ground black pepper")
  u16 = Unit.find_or_create_by(unit: "teaspoon")
  a16 = 0.25
  recipe.recipe_ingredient_units.build(ingredient_id: i16.id, unit_id: u16.id, amount: a16)

puts "Creating directions..."

  recipe.directions.build(sequence: 1,  description: "Chop vegetables as described in ingredients list.")
  recipe.directions.build(sequence: 2,  description: "Heat the oil in a large saute pan. Add the bread and salt; cook over low to medium heat, tossing frequently, for 10 minutes, or until nicely browned. Add more oil as needed.")
  recipe.directions.build(sequence: 3,  description: "For the vinaigrette, whisk together the garlic, mustard, vinegar, 1/2 cup olive oil, 1/2 teaspoon salt, and black pepper.")
  recipe.directions.build(sequence: 4,  description: "In a large bowl, mix the tomatoes, cucumber, red pepper, yellow pepper, red onion, basil, and capers. Add the bread cubes and toss with the vinaigrette.")
  recipe.directions.build(sequence: 5,  description: "Season liberally with salt and pepper.")
  recipe.directions.build(sequence: 6,  description: "Serve, or allow the salad to sit for about half an hour for the flavors to blend.")

  recipe.save

















