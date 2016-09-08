class Tournament
  include Enumerable

  attr_reader :name, :players

  def initialize(name, players)
    @name = name
    @players = players
  end

  def each
    0.upto(players.size - 1) { |i| yield players[i] }
  end

end



