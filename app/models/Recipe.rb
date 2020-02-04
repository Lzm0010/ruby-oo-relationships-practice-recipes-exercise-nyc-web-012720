class Recipe
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    ### CLASS METHODS ###
    def self.all
        @@all
    end

    def self.most_popular
        most_users = 0
        recipe_w_most_users = nil
        @@all.each{|recipe|
            if recipe.users.count > most_users
                most_users = recipe.users.count
                recipe_w_most_users = recipe
            end
        }
        recipe_w_most_users
    end

    ### INSTANCE METHODS ###

    def recipe_cards
        RecipeCard.all.select{|rc| rc.recipe == self}
    end

    def users
        self.recipe_cards.map{|rc| rc.user}
    end

    def ingredients
        RecipeIngredient.all
            .select{|r_ingredient| r_ingredient.recipe == self}
            .map{|r_ingredient| r_ingredient.ingredient}
    end

    def allergens
        allergies = []
        self.ingredients.each{|ingredient| 
            Allergy.all.each{|allergy| 
                if allergy.ingredient == ingredient
                    allergies << ingredient
                end
                }
            }
        allergies.uniq
    end

    def add_ingredients(ingredients)
        ingredients.each{|ingredient|
            RecipeIngredient.new(ingredient, self)
        }
    end
end