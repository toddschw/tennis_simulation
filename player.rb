class Player
  attr_reader :name, :seed, :atp_rank, :country, :age

  def initialize(name, seed, atp_rank, country, age)
    @name = name
    @seed = seed
    @atp_rank = atp_rank
    @country = country
    @age = age
  end

  def <=>(other)
    atp_rank <=> other.atp_rank
  end
end



