class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def startMembership(cost,gym) #I created for myself
    Membership.new(cost,gym,self)
  end

  def myMemberships
    Membership.all.select{|members| members.lifter == self}
  end

  def myGyms
    myMemberships.map{|m_ships| m_ships.gym}
  end

  def self.total_all_lifters
    @@all.map{|lifters| lifters.lift_total}.reduce(:+) / @@all.length
  end

  def self.gym_cost(lifter_name)
    Membership.all.find {|members| members.lifter == lifter_name}.cost
  end



end
