class Allergy
    attr_accessor :user, :ingredient

    @@all = []

    def initialize(user, ingredient)
        @user = user
        @ingredient = ingredient

        @@all << self
    end

    ### CLASS METHODS ###
    def self.all
        @@all
    end

end

