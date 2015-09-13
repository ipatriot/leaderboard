#Hey I started this problem with Drake but then went on to finish it individiually
#I am having lots of trouble in putting my answers in object oriented programming
#I am struggling in that area a lot, and I would love to get some help in that.
#AS you stated in the beginning, its the first time you put it in ignition, its a hard topic, so please assist me on it,
#I really need to figure it out, thanks---Jorge.

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

# YOUR CODE HERE

scores = []

class Team #this has to change, the Team method only has to get the names of the team.
  attr_accessor :home_team, :away_team, :home_score, :away_score

  def initialize(home_name, away_name, home_score, away_score)
    @home_name = home_name
    @away_name = away_name
    @home_score = home_score
    @away_score = away_score
  end
  @teams_that_win = []
  @teams_that_loose = []

  @patriots_wins = 0
  @broncos_wins = 0
  @colts_wins = 0
  @steelers_wins = 0

  @patriots_loss = 0
  @broncos_loss = 0
  @colts_loss = 0
  @steelers_loss = 0

  game_info.each do |hash|
    new_h = hash.values.flatten
      h2 = Hash[new_h.map {|k| [
       if new_h[2] > new_h[3]
         k = new_h[0]
       else
         k = new_h[1]
       end
     ]}]
      @teams_that_win.push(h2.keys.join)
    end

    game_info.each do |hash|
      new_h = hash.values.flatten
        h2 = Hash[new_h.map {|k| [
         if new_h[2] > new_h[3]
           k = new_h[1]
         else
           k = new_h[0]
         end
       ]}]
        @teams_that_loose.push(h2.keys.join)
      end

   @patriots_wins = @teams_that_win.count("Patriots")
   @broncos_wins = @teams_that_win.count("Broncos")
   @colts_wins = @teams_that_win.count("Colts")
   @steelers_wins = @teams_that_win.count("Steelers")

   @patriots_loss = @teams_that_loose.count("Patriots")
   @broncos_loss = @teams_that_loose.count("Broncos")
   @colts_loss = @teams_that_loose.count("Colts")
   @steelers_loss = @teams_that_loose.count("Steelers")

   @rank = {}

   @rank["Patriots"] = @patriots_wins
   @rank["Colts"] = @colts_wins
   @rank["Broncos"] = @broncos_wins
   @rank["Steelers"] = @steelers_wins

   @this = @rank.sort_by! {|key, value| value}.reverse
   puts "--------------------------------"
   puts @this
   puts "--------------------------------"

  end



game_info.each do |var|
  Team.new(game_info[0][:home_team], game_info[0][:away_team], game_info[0][:home_score], game_info[0][:away_score])
end
