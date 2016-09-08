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
    puts "#{player.name}'s current (or finished) round is #{player.round}."
  end
end

#illustrates #min method
def show_top_player
  puts "The top ranked player in the tournament is #{@us_open.min.name}."
end


#illustrates #max method
def show_lowest_player
  puts "The lowest ranked player in the Top 10 is #{@us_open.max.name}."
end

#illustrates #all? method
def all_still_in?
  status_of_top_10 = @us_open.all? do |player|
    Player::ROUND_POINTS[player.round] >= 6
  end

  puts "#{status_of_top_10 ? 'All' : 'Not all'} Top 10 seeds are still in."
end

def any_from_US?
  from_us = @us_open.any? { |player| player.country == "US" }
  puts "#{from_us ? 'At least 1' : 'None'} of the Top 10 are from the United States."
end

