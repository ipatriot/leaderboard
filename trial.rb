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

class Team
  attr_accessor :home_team, :away_team, :home_score, :away_score

  def initialize(home_name, away_name, home_score, away_score)
    @home_name = home_name
    @away_name = away_name
    @home_score = home_score
    @away_score = away_score
    @teams = []
  end

  def team_names
    game_info.each do |var|
      var.each do |key, value|
        values[0]
      end
    end
  end
end

game_info.each do |var|
  Team.new(game_info[0][:home_team], game_info[0][:away_team], game_info[0][:home_score], game_info[0][:away_score]).team_names
end
