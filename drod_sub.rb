def game_info
  [
    {
      home_team: "Patriots",
      away_team: "Broncos",
      home_score: 7,
      away_score: 3
    },
    {
	      home_team: "Broncos",
	      away_team: "Colts",
	      home_score: 3,
	      away_score: 0
	    },
	    {
	      home_team: "Patriots",
	      away_team: "Colts",
	      home_score: 11,
	      away_score: 7
	    },
	    {
	      home_team: "Steelers",
	      away_team: "Patriots",
	      home_score: 7,
	      away_score: 21
	    }
	  ]
end

class Leaderboard
  attr_reader :games, :teams

  def initialize(games) #only passes the games.
    @games = games
    @teams = [] #it passes the teams array
  end

  def find_or_create_team(team_name)
    team = teams.find { |team| team.name == team_name }
    unless team
      team = Team.new(team_name)
      teams << team
    end
    team
  end

  def count_win_loss
    games.each do |game|
      home_team = find_or_create_team(game[:home_team]) #here it creates 
      away_team = find_or_create_team(game[:away_team])

      if game[:home_score] > game[:away_score]
        home_team.wins += 1
        away_team.losses += 1
      else
        away_team.wins += 1
        home_team.losses += 1
      end
    end
  end

  def ranked_teams
    count_win_loss
    teams.sort_by! { |team| [-team.wins, team.losses] }
    teams.each_with_index do |team, index|
      team.rank = index + 1
    end
  end

  def display
    display_string = ""
    ranked_teams.each do |team|
      display_string += team.summary
    end
    display_string
  end
end

class Team
  attr_accessor :name, :wins, :losses, :rank

  def initialize(name)
    @name = name
    @wins = 0
    @losses = 0
    @rank = 0
  end

  def summary
    "#{name} (#{rank}): #{wins} wins, #{losses} losses\n"
  end
end

leaderboard = Leaderboard.new(game_info)
puts leaderboard.display
