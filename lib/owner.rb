require 'pry'
class Owner
  # code goes here
#  attr_accessor :name
  attr_reader :name, :species
@@all = []
  def initialize(name)
    @species = "human"
    @name = name
    @@all << self
  end
  def say_species
    "I am a #{@species}."
  end
  def self.all
    @@all
  end
  def self.count
    @@all.size
  end
  def self.reset_all
    @@all.clear
  end
  def cats
    Cat.all.select{|cat|cat.owner ==self}
  end
  def dogs
    Dog.all.select{|dog|dog.owner ==self}
  end
  def buy_cat(name)
    pet = Cat.new(name, self)
    pet
  end
  def buy_dog(name)
    pet = Dog.new(name, self)
  end

  def walk_dogs
      Dog.all.each{|dog|dog.mood= "happy"}
  end
  def feed_cats
   Cat.all.each {|cat|cat.mood ="happy"}
     #binding.pry
  end
  def sell_pets
  pet_dog = Dog.new
  pet_cat = Cat.new
  pet = pet_cat + pet_dog
  #binding.pry
  end
end
