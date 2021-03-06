class Animal
    attr_accessor :weight
    attr_reader :nickname, :species, :zoo

    @@all = []

    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = zoo
        save
    end

    def save
        self.class.all << self
    end

    def self.find_by_species(species)
        self.all.select {|animal| animal.species == species}
    end

    def self.all
        @@all
    end
end
