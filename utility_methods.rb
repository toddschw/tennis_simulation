def introduce_players
  @us_open.each do |player|
      puts "Hi, I'm #{player.name} from #{player.country} and I'm seeded ##{player.seed} in the U.S. Open"
  end
end

#illustrates #sort
def show_world_rankings
  @us_open.sort.each do |player|
    puts "#{player.name} is ranked ##{player.atp_rank} in the world."
  end
end

#illustrates #sort_by
def show_by_age
  players_by_age = @us_open.sort_by do |player|
     player.age
  end

  players_by_age.each do |player|
      puts "#{player.name} is #{player.age} years old."
  end
end

#illustrates #sort_by also 
def show_by_current_round
  players_by_round = @us_open.sort_by do |player|
      Player::ROUND_POINTS[player.round]
  end

  players_by_round.each do |player|
    puts "#{player.name} current (or finished) round is #{player.round}"
  end
end
