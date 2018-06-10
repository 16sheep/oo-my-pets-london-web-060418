class Owner
  attr_accessor :pets, :name
  attr_reader :species

 @@all = []

 def initialize(name)
   @name = name
   @pets = {fishes: [], cats: [], dogs: []}
   @@all << self
   @species = 'human'
 end

 def self.all
   @@all
 end

 def species
   @species
 end

 def say_species
   "I am a #{@species}."
 end

 def buy_cat(name)
   cat = Cat.new(name)
   @pets[:cats] << cat
 end

 def buy_dog(name)
   dog = Dog.new(name)
   @pets[:dogs] << dog
 end

 def buy_fish(name)
   fish = Fish.new(name)
   @pets[:fishes] << fish
 end

 def sell_pets
   pets.each do |key, value|
     value.map {|item| item.mood = 'nervous'}
     value.clear
  end
 end

 def list_pets
   "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
 end

 def walk_dogs
   pets[:dogs].map {|dog| dog.mood = 'happy'}
 end

 def play_with_cats
   pets[:cats].map {|cat| cat.mood = 'happy'}
 end

 def feed_fish
  pets[:fishes].map {|fish| fish.mood = 'happy'}
 end

 def self.count
   self.all.length
 end

 def self.reset_all
   @@all.clear
 end
end
