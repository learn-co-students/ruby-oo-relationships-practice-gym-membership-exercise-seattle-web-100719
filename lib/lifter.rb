require_relative 'test'
require_relative 'gym'
require_relative 'membership'

class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def total_cost #output will be one integer 
    sum = 0
    memberships.each do |membership|
      sum += membership.cost
    end 
    sum
  end

  def sign_up(gym, cost)
    Membership.new(cost, self, gym)
  end 

  def memberships
    membership_array = []
    Membership.all.each do |memberships| 
      if memberships.lifter == self
        membership_array << memberships
      end
    end 
    membership_array
  end 

  def gyms
    gym_array = []
    Membership.all.each do |memberships| 
      if memberships.lifter == self
        membership_array << memberships.gym 
      end
    end 
    membership_array
  end 

  def self.all
    @@all
  end

  def self.lift_total
    average = 0
    all.each do |lifters|
      average += lifters.lift_total
    end 
    average = average / @@all.length
    average
  end 
end
