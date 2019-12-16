# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
may = Lifter.new("may",10)
umer = Lifter.new("Umer",100)
sam = Lifter.new("Sam", 90)

hit = Gym.new("HIT gym")
gym2 = Gym.new("GYM 2")

may.startMembership(100,hit)
umer.startMembership(230,gym2)
sam.startMembership(200,hit)

binding.pry

puts "Gains!"
