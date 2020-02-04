class User
    attr_accessor

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    ### CLASS METHODS ###
    def self.all
        @@all
    end

    ### INSTANCE METHODS ###
    def recipe_cards
        RecipeCard.all.select{|rc| rc.user == self}
    end

    def recipes
        self.recipe_cards.map{|rc| rc.recipe}
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(self, recipe, date, rating)
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergens
        Allergy.all
            .select{|allergy| allergy.user == self}
            .map{|allergy| allergy.ingredient}
    end

    def top_three_recipes
        self.recipe_cards
            .sort{|a,b| b.rating <=> a.rating}
            .first(3)
            .map{|rc| rc.recipe}

    end

    def most_recent_recipe
        self.recipe_cards
            .sort{|a, b| b.date <=> a.date}
            .first(1)
            .map{|rc| rc.recipe}
    end

    def safe_recipes
        ### safe recipes container
        safe_recipes_array = []
        ### loop thru recipes 
        Recipe.all.each{|recipe|
            ### they start out safe
            is_safe = true
            ### loop through the recieps ingredients
            recipe.ingredients.each{|ingredient|
                ### if users allergies includes the ingredient 
                if self.allergens.include?(ingredient)
                    ### set is safe to false
                    is_safe = false
                end
            }
            #### if the recipe is still safe add it to the array
            if is_safe
                safe_recipes_array << recipe
            end
        }
        safe_recipes_array
    end
end