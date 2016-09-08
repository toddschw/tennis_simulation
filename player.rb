class Player
  attr_reader :name, :seed, :atp_rank, :country

  def initialize(name, seed, atp_rank, country)
    @name = name
    @seed = seed
    @atp_rank = atp_rank
    @country = country
  end

  def <=>(other)
    atp_rank <=> other.atp_rank
  end
end



