
#THIS IS THE LUBE FACTORY
class Lube
#allows getter/setter for all of these
attr_reader :name, :type, :consistency, :safe_with_silicone_toys

#instance variable = hash[]
  def initialize(lube_hash)
    @name = lube_hash[:name]
    @type = lube_hash[:type]
    @consistency = lube_hash[:consistency]
    @safe_with_silicone_toys = lube_hash[:safe_with_silicone_toys]
  end
end


lube = [
  {name: "Silquid Silk",
  type: "Hybrid",
  consistency: "Lotion",
  safe_with_silicone_toys: "Yes"
  },
  {name: "Pjur",
  type: "Silicone",
  consistency: "Slick",
  safe_with_silicone_toys: "No"
  },
  {name: "Babelube",
  type: "Water",
  consistency: "Gel",
  safe_with_silicone_toys: "Yes"
  }
]

#def @name
#  name
#end

#THIS IS THE METHOD THAT TELLS THE LUBE FACTORY TO CREATE INSTANCES OF LUBE
#THE ARRAY WITH HASHES IS THE INFORMATION THAT WILL FILL THOSE INSTANCES
#lube refers directly to array. for each hash inside array, do this
#hash is just a variable placeholder
#creates a new instance of the class for each hash in array
#throws in that
#assigning hash variable to each one.
  lube.each do |hash|
    @lubricant = Lube.new(hash)
    puts @lubricant.name #local variables -> need to make them readable for instance variables above
    puts @lubricant.type
    puts @lubricant.consistency
    puts @lubricant.safe_with_silicone_toys
    puts @lubricant.inspect #the object id number
    #puts lubricant.sort doesn't work because it's cycling through array, not dealing with array totally
  end

    #How do I do things to the instances outside of this loop??
