class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end

  def myMemberships
    Membership.all.select{|members| members.gym == self}
  
  end

  def myMembers
    myMemberships.map {|members| members.lifter}
  end

  def membersNames
    myMembers.map {|member| member.name}
  end

  def membersCanLift
    myMembers.map{|member| member.lift_total}.reduce(:+)
  end
end
