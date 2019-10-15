# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here



mike = Lifter.new("Mike",125)
john = Lifter.new("John",166)
khon = Lifter.new("Khon",100)
seattle = Gym.new("Seattle")
redmond= Gym.new("Redmond")
bellvue = Gym.new("bellvue")
Membership.new(mike,seattle,400)
Membership.new(john,bellvue,500)
Membership.new(mike,bellvue,600)

binding.pry

puts "Gains!"
