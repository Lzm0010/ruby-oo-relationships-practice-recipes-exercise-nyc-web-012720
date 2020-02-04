class RecipeIngredient
    attr_accessor :ingredient, :recipe

    @@all = []

    def initialize(ingredient, recipe)
        @ingredient = ingredient
        @recipe = recipe

        @@all << self
    end

    ### CLASS METHODS ###
    def self.all
        @@all
    end

end