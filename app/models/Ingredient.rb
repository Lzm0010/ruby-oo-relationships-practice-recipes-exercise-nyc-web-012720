class Ingredient
    attr_accessor :name, :recipe

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    ### CLASS METHODS ###
    def self.all
        @@all
    end

    def self.most_common_allergen
        allergy_count = Hash.new(0)
        Allergy.all.each{|allergy|
            allergy_count[allergy.ingredient.name] += 1
        }
        most_users = 0
        most_ingredient = nil
        allergy_count.each_pair{|ingredient, count|
            if count > most_users
                most_users = count
                most_ingredient = ingredient
            end
        }
        most_ingredient
    end

end