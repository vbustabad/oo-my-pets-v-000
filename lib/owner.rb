class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@owners = []
  @@owner_count = 0

  def initialize(species)
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@owners << self
    @@owner_count = @@owner_count + 1
  end

  def say_species
    "I am a human."
  end

  def self.all
    @@owners
  end

  def self.count
    @@owner_count
  end

  def self.reset_all
    @@owner_count = 0
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    self.pets[:fishes] = new_fish
    self.pets[:fishes][0]
  end

  def buy_cat(name)

  end

  def buy_dog(name)

  end

  def walk_dogs
    self.pets[:dogs] = "happy"
  end

  def play_with_cats
    self.mood = "happy"
  end

  def feed_fish
    self.mood = "happy"
  end

  def sell_pets
  end

  def list_pets
  end

end
