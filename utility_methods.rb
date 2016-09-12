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

#illustrates #any method
def any_from_US?
  from_us = @us_open.any? { |player| player.country == "US" }
  puts "#{from_us ? 'At least 1' : 'None'} of the Top 10 are from the United States."
end

#illlustrates #map method
def show_map

  origins = @us_open.map do |player|
    case player.country
    when "France", "Spain", "Great Britain", "Switzerland"
      "Western Europe"
    when "Serbia", "Croatia"
      "Eastern Europe"
    when "Austria"
      "Central Europe"
    when "Japan"
      "Asia"
    when "Canada"
      "Canada"
    end
  end

  origins_enum = origins.to_enum
  us_open_enum = @us_open.to_enum

  10.times do
    puts "#{us_open_enum.next.name} is from #{origins_enum.next}"
  end
end

# show #count
def top_10_seed_rank
  seed_same_as_rank = @us_open.count do |player|
    player.seed == player.atp_rank
  end

  puts "The number of players whose seed and ATP rank is the same is #{seed_same_as_rank}."
end

# show #detect (AKA #find)
def find_surprise_upset
  upset_player = @us_open.find do |player|
    player.seed >= 3 && Player::ROUND_POINTS[player.round] <= 3
  end

  puts "#{upset_player.name} was upset in #{upset_player.round}"
end

# show #drop method
def show_6_to_10
  second_half = @us_open.drop(5)
  second_half.each do |player|
    puts "#{player.name} is in the second half of the Top 10 (seed = #{player.seed})"
  end
end

#drop_while
def show_players_2_10
  not_number_1 = @us_open.sort.drop_while { |player| player.seed < 2}
  not_number_1.each { |player| puts "#{player.name} - #{player.seed}"}
end

#each_cons
def just_for_fun
  @us_open.each_cons(3) do |two_players|
    output_line = ""
    two_players.each do |p|
      output_line = output_line + p.name + ", "
    end
    print output_line[0..-3]; puts;
  end
end



