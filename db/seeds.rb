puts "Users"

puts "Creating Users..."

@natalie = User.create(first_name: "Natalie", last_name: "Arellano", email: "natalie.arellano@gmail.com")
@ben = User.create(first_name: "Ben", last_name: "Shore", email: "ben.shore@gmail.com")
@kris = User.create(first_name: "Kris", last_name: "Croes", email: "kris.croes@gmail.com")
@ana = User.create(first_name: "Ana", last_name: "Perez", email: "ana.perez@gmail.com")


puts "Creating Ingredients"

@chocolate = Ingredient.create(name: "chocolate")
@eggs = Ingredient.create(name: "eggs")
@flour = Ingredient.create(name: "flour")
@butter = Ingredient.create(name: "butter")
@banana  = Ingredient.create(name: "banana")
@baking_powder = Ingredient.create(name: "baking_powder")
@milk = Ingredient.create(name: "milk")
@chicken = Ingredient.create(name: "chicken")
@oil = Ingredient.create(name: "oil")
@crumbled_bread = Ingredient.create(name: "crumbled_bread")
@rice = Ingredient.create(name: "rice")
@water = Ingredient.create(name: "water")
@orange = Ingredient.create(name: "orange")


puts "Creating Units"

@no_unit = Unit.create(unit: "no unit")
@pound = Unit.create(unit: "pound")
@ounce = Unit.create(unit: "ounce")
@cup = Unit.create(unit: "cup")
@table_spoon = Unit.create(unit: "table spoon")
@tea_spoon = Unit.create(unit: "tea spoon")
@kilogram = Unit.create(unit: "kilogram")
@gram = Unit.create(unit: "gram")
@liter = Unit.create(unit: "liter")

puts "Creating Recipes..."

@chocolate_cake = Recipe.create(title: "Chocolate Cake", creator_id: 1, description: "Melty chocolate fudge cake")
@banana_pudding = Recipe.create(title: "Banana Pudding", creator_id: 2, description: "Highly flavored banana pudding")
@fried_chicken = Recipe.create(title: "Fried Chicken", creator_id: 3, description: "Deep-fried chicken in tomato sauce")


puts "Creating Cookbook...this associates users with cookbooks"

@natalies_cookbook = Cookbook.create(user_id: 1, title: "Natalie's Cookbook", description: "Healthy recipes")
@bens_cookbook = Cookbook.create(user_id: 2, title: "Ben's Cookbook", description: "Great recipes")
@kris_cookbook = Cookbook.create(user_id: 3, title: "Kris's Cookbook", description: "Chicken recipes")
@anas_cookbook = Cookbook.create(user_id: 4, title: "Ana's Cookbook", description: "Fruity recipes")


puts "Creating RecipeCookbook...this associates recipes with cookbooks"

@natalies_cookbook.recipes = [@chocolate_cake, @banana_pudding, @fried_chicken]
@bens_cookbook.recipes = [@chocolate_cake, @banana_pudding, @fried_chicken]
@kris_cookbook.recipes = [@chocolate_cake, @banana_pudding, @fried_chicken]
@anas_cookbook.recipes = [@chocolate_cake, @banana_pudding, @fried_chicken]


puts "Creating directions..."

@melt_the_chocolate = Direction.create(sequence: 1, description: "melt the chocolate")
@add_the_flour = Direction.create(sequence: 2, description: "add the flour")
@bake_the_cake = Direction.create(sequence: 3, description: "put the mixture in the over for 45 minutes")
@mash_the_bananas = Direction.create(sequence: 1, description: "mash the bananas")
@let_sit_in_fridge = Direction.create(sequence: 2, description: "let sit in the fridge for 30 minutes")
@batter_the_chicken = Direction.create(sequence: 1, description: "batter the chicken")
@fry_the_chicken = Direction.create(sequence: 2, description: "fry the chicken")

@chocolate_cake.directions = [@melt_the_chocolate, @add_the_flour, @bake_the_cake]
@banana_pudding.directions = [@mash_the_bananas, @let_sit_in_fridge]
@fried_chicken.directions = [@batter_the_chicken, @fry_the_chicken]


puts "Associating Ingredients with Recipes"

@chocolate_cake.ingredients = [@chocolate, @eggs, @flour, @butter, @baking_powder, @milk] 
@fried_chicken.ingredients = [@chicken, @oil, @crumbled_bread, @rice]
@banana_pudding.ingredients = [@banana, @water, @orange, @eggs, @flour, @butter]

@chocolate_cake.recipe_ingredient_units[0].update(unit_id: 2, amount: 1)
@chocolate_cake.recipe_ingredient_units[1].update(amount: 2)
@chocolate_cake.recipe_ingredient_units[2].update(unit_id: 3, amount: 3)
@chocolate_cake.recipe_ingredient_units[3].update(unit_id: 2, amount: 4)
@chocolate_cake.recipe_ingredient_units[4].update(unit_id: 5, amount: 1)
@chocolate_cake.recipe_ingredient_units[5].update(unit_id: 3, amount: 1)

@fried_chicken.recipe_ingredient_units[0].update(amount: 1)
@fried_chicken.recipe_ingredient_units[1].update(unit_id: 4, amount: 2)
@fried_chicken.recipe_ingredient_units[2].update(unit_id: 3, amount: 1)
@fried_chicken.recipe_ingredient_units[3].update(unit_id: 3, amount: 1)

@banana_pudding.recipe_ingredient_units[0].update(amount: 10)
@banana_pudding.recipe_ingredient_units[1].update(unit_id: 3, amount: 1)
@banana_pudding.recipe_ingredient_units[2].update(amount: 1)
@banana_pudding.recipe_ingredient_units[3].update(amount: 2)
@banana_pudding.recipe_ingredient_units[4].update(unit_id: 7, amount: 10)
@banana_pudding.recipe_ingredient_units[5].update(unit_id: 2, amount: 8)


puts "Associating recipes with cookbooks"





