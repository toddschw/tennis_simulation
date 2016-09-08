class Player

  ROUND_POINTS = {
    RND1: 1,
    RND2: 2,
    RND3: 3,
    RND4: 4,
    QF: 5,
    SF: 6,
    F: 7,
    C: 8
  }

  attr_reader :name, :seed, :atp_rank, :country, :age, :round

  def initialize(name, seed, atp_rank, country, age, round)
    @name = name
    @seed = seed
    @atp_rank = atp_rank
    @country = country
    @age = age
    @round = round
  end

  def <=>(other)
    atp_rank <=> other.atp_rank
  end
end



