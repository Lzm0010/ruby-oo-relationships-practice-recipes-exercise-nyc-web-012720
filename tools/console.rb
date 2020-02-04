require_relative '../config/environment.rb'

#Users
lee = User.new('Lee')
lou = User.new('Lou')
jason = User.new('Jason')
osgood = User.new('Osgood')
greg = User.new('Greg')
adit = User.new('Adit')
jared = User.new('Jared')
komal = User.new('Komal')
jim = User.new('Jim')
sekou = User.new('Sekou')
steve = User.new('Steve')

#Ingredients
carrot = Ingredient.new('Carrot')
broccoli = Ingredient.new('Broccoli')
lettuce = Ingredient.new('Lettuce')
cheese = Ingredient.new('Cheese')
sausage = Ingredient.new('Sausage')
tomato = Ingredient.new('Tomato')
potato = Ingredient.new('Potato')
chicken = Ingredient.new('Chicken')
ham = Ingredient.new('Ham')
beets = Ingredient.new('Beets')
avocado = Ingredient.new('Avocado')
mango = Ingredient.new('Mango')

#Allergies
lee.declare_allergy(carrot)
lee.declare_allergy(broccoli)
lee.declare_allergy(lettuce)
lou.declare_allergy(carrot)
lou.declare_allergy(chicken)
adit.declare_allergy(cheese)

#Recipes
pizza = Recipe.new("Pizza")
salad = Recipe.new("Salad")
beetsoup = Recipe.new("Beet Soup")
burrito = Recipe.new("Burrito")
meat_and_taters = Recipe.new("Meat and Taters")
throw_it_together = Recipe.new("Throw It Together")

#RecipeIngredients
pizza.add_ingredients([cheese, sausage, tomato])
salad.add_ingredients([lettuce, carrot, chicken, avocado])
beetsoup.add_ingredients([beets, broccoli, avocado])
burrito.add_ingredients([chicken, sausage, cheese])
meat_and_taters.add_ingredients([ham, potato])
throw_it_together.add_ingredients([mango, tomato, cheese, broccoli])

#RecipeCards
lee.add_recipe_card(pizza, Time.now, 9)
lee.add_recipe_card(salad, Time.now, 3)
lee.add_recipe_card(burrito, Time.now, 10)
lee.add_recipe_card(meat_and_taters, Time.now, 5)
lou.add_recipe_card(pizza, Time.now, 7)
lou.add_recipe_card(meat_and_taters, Time.now, 5)
lou.add_recipe_card(throw_it_together, Time.now, 8)
lou.add_recipe_card(beetsoup, Time.now, 10)
adit.add_recipe_card(beetsoup, Time.now, 9)
adit.add_recipe_card(pizza, Time.now, 6)
adit.add_recipe_card(throw_it_together, Time.now, 2)
adit.add_recipe_card(burrito, Time.now, 7)
jason.add_recipe_card(burrito, Time.now, 7)
jason.add_recipe_card(meat_and_taters, Time.now, 7)
jason.add_recipe_card(salad, Time.now, 5)
jason.add_recipe_card(pizza, Time.now, 8)





binding.pry
