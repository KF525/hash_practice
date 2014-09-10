
class Dinosaur
  #getter/setter shortcut
  attr_accessor :name, :type, :diet, :period

  #initialize(argument calling hash)
  #different key/value in the hash
  def initialize(dino_hash)
    @name = dino_hash[:name]
    @type = dino_hash[:type]
    @diet = dino_hash[:diet]
    @period = dino_hash[:period]
  end
end

  #array with two hashes with a series of keys and values
   dino = [
    {
    name: "Apatosaurus ajax",
    type: {suborder: "Sauropodomorpha", family: "Diplocidae",
      subfamily: "Apatosaurinae"},
    diet: "Herbivore",
    period: "Jurassic"
    },
    {
    name: "Tyrannosaurus rex",
    type: {suborder: "Theropoda", family: "Tyrannosauridae",
      subfamily: "Tyrannosauridae", tribe: "Tyrannosaurini" },
    diet: "Carnivore",
    period: "Jurassic"
    }]

  #for each hash in the array
  #create a new instance of the class(and include all the attributes)
  #puts the different attributes
dino.each do |hash|
  dinosaur = Dinosaur.new(hash)
  puts dinosaur.name
  puts dinosaur.type.suborder
  puts dinosaur.type.family
  puts dinosaur.diet
  puts dinosaur.period
  puts dinosaur.inspect
end


#How do you access these instances outside of the each method?
