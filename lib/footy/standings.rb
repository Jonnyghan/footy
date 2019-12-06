class Footy::Standings
  attr_accessor :name, :table, :top_team, :bottom_team, :url
  def self.today
     puts <<-DOC.gsub /^\s*/, ''
    
    1. England: Premier League
    2. Spain: La Liga
    3. Germany: Bundesliga.1 
    4. France: Ligue 1
    5. Italy: Serie A
    
    DOC
    uk_standings = self.new 
    uk_standings.name = "Premier League Standings"
    uk_standings.table =  "Table"
    uk_standings.top_team = "Liverpool"
    uk_standings.bottom_team = "Watford"
    uk_standings.url = "https://www.premierleague.com/tables"
    
    sp_standings = self.new 
    sp_standings.name = "La Liga Standings"
    sp_standings.table =  "Table"
    sp_standings.top_team = "Barcelona"
    sp_standings.bottom_team = "Gijon"
    sp_standings.url = "https://www.laliga.com/en-US/laliga-santander/classification"
    
    ger_standings = self.new 
    ger_standings.name = "Bundesliga.1 Standings"
    ger_standings.table =  "Table"
    ger_standings.top_team = "Bayern Munchen"
    ger_standings.bottom_team = "Paderborn"
    ger_standings.url = "https://www.bundesliga.com/en/bundesliga/table"
    
    
    
    [uk_standings,sp_standings,ger_standings]
  end
  
end