require_relative 'test'
require_relative 'lifter'
require_relative 'gym'

class Membership
  attr_reader :cost, :lifter, :gym

  @@all = []

  def initialize(cost, lifter, gym)
    @cost = cost
    @lifter = lifter
    @gym = gym 
    @@all << self
  end

  def self.all
    @@all
  end 

end

