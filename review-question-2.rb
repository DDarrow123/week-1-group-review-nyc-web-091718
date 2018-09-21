
require 'pry'
class Car
  attr_accessor :make, :model
  @@all = []
  @@all_instance_addresses = []

  def self.all
    @@all
  end

  def self.all_instance_addy
    @@all_instance_addresses
  end

  def initialize(make: "Volvo", model: "Lightning")
    @make = make
    @model = model
    @@all << self
    @@all_instance_addresses << self.inspect.split(' ')[0]+">"
  end

  def drive
    "VROOOOOOOOOOOOM!"
  end
end

# volvo_lightning = Car.new("Volvo", "Lightning")
# yugo = Car.new("Zastava", "Yugo")
# lada = Car.new("AvtoVAZ", "Lada")

v1 = Car.new(make: "Volvo", model: "Lightning")
v2 = Car.new(make: "Volvo", model: "Lightning")
v3 = Car.new(make: "Volvo", model: "Lightning")


binding.pry
volvo_lightning.make
#=> "Volvo"
volvo_lightning.model
#=> "Lightning"

 car.drive
# => "VROOOOOOOOOOOOM!"

Car.all
#=> [#<Car:0x00007fae28930f20>, #<Car:0x00007fae28923370>, #<Car:0x00007fae2891ae78>]
# If you really only want the instance IDs you can do the following:
# @@all_instance_addresses << self.inspect.split(' ')[0]+">" inside the initialize method

# BONUS: # modified the initialize method to accept keyword arguments with the variable: "whatever"

 volvo_lightning = Car.new(make: "Volvo", model: "Lightning")

volvo_lightning.make
#=> "Volvo"
volvo_lightning.model
#=> "Lightning"
