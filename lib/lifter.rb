class Lifter
  attr_reader :name, :lift_total
  @@all=[]

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
      @@all
  end

  def memberships
      Membership.all.select do |membership|
         membership.lifter == self
      end 
  end

  def gyms
      self.memberships.map{|membership| membership.gym}
  end

  # def self.average_lift_total
  #   total=0
  #   @@all.each do |lifter|
  #     total += lifter.lift_total.to_f
  #   end
  #   total/@@all.size.to_f
  # end 


  def self.average_lift_total
    @@all.sum{|lifter|  lifter.lift_total.to_f}/@@all.size.to_f
  end

  
  def total_memberships_cost
    total=0
    ar=Membership.all.select do |membership|
       membership.lifter == self
    end
    ar.each do |membership|
      total += membership.cost
      end
      total
  end

  def sign_membership(gym, cost)
      Membership.new(self, gym, cost)
  end
  
end
