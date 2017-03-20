class Owner
  attr_accessor :pets
  @@instances_array = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@instances_array.push(self)
  end

  def self.all
    @@instances_array
  end

  def self.reset_all
    @@instances_array.clear
  end

  def self.count
    @@instances_array.length
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

attr_accessor :name

 def buy_fish(fish)
 new_fish = Fish.new(fish)
   @pets[:fishes].push(new_fish)
 end

  def pets
    @pets
  end

  def buy_cat(cat)
    new_cat = Cat.new(cat)
    self.pets[:cats].push(new_cat)
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    self.pets[:dogs].push(new_dog)
end

  def walk_dogs
   self.pets[:dogs].each do |dogss|
     dogss.mood = "happy"
   end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |pet_type, pet_array|
      pet_array.each do |pet|
        pet.mood = "nervous"
      end
    end
    self.pets.clear
  end

  def list_pets 
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end

end
