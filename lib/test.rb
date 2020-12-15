require 'pry'
require_relative 'lifter'
require_relative 'gym'
require_relative 'membership'

lift1 = Lifter.new("Michael", 500)
lift2 = Lifter.new("Bill", 350)
lift3 = Lifter.new("Oli", 400)

gym1 = Gym.new("Golds")
gym1 = Gym.new("Willy")
gym1 = Gym.new("24hr")

memb1 = Membership.new(25, lift1, gym1)
memb1 = Membership.new(40, lift2, gym2)
memb1 = Membership.new(50, lift3, gym3) 

binding.pry
0