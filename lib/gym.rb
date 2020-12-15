require_relative 'test'
require_relative 'lifter'
require_relative 'membership'

class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def get_lifter_names #output is an array
    new_array = []
    Membership.all.each do |membership|
      if membership.gym == self
        new_array << membership.lifter.name
    end 
    new_array
  end

  def get_combined_lift_total #output in a float
    number = 0
    Membership.all.each do |membership|
      if membership.gym == self
        number += membership.lifter.lift_total 
    end 
    number 
  end

  def memberships
    membership_array = []
    Membership.all.each do |memberships| #memberships refers to each 'set of data' (array of arrays) established in the Membership class (cost, lifter, gym)
      if memberships.gym == self
        membership_array << memberships
      end
    end 
    membership_array
  end

  def get_lifter_names
    lifter_array = []
    Membership.all.each do |memberships| #memberships refers to each 'set of data' (array of arrays) established in the Membership class (cost, lifter, gym)
      if memberships.gym == self
        membership_array << memberships.lifter 
      end
    end 
    lifter_array #when running test, need to enter e.g. gym1?
  end

  def self.all
    @@all
  end 

end
