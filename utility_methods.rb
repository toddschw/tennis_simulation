def introduce_players
  @us_open.each do |player|
      puts "Hi, I'm #{player.name} from #{player.country} and I'm seeded ##{player.seed} in the U.S. Open"
  end
end

def show_world_rankings
  @us_open.sort.each do |player|
    puts "#{player.name} is ranked ##{player.atp_rank} in the world"
  end 
end
