class Membership
  attr_reader :cost
  attr_accessor :lifter, :gym

  @@all = []

  def initialize(cost,gym,lifter)
    @cost = cost
    @gym = gym
    @lifter = lifter

    @@all << self
  end

  def self.all
    @@all
  end

  # def gym=(gym_name)
  #   Gym.new(gym_name)
  # end


end
