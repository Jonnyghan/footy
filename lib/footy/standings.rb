class Footy::Standings
  attr_accessor :name, :table, :top_team, :bottom_team, :url
  def self.today
   
    uk_standings = self.new 
    uk_standings.name = "Premier League Standings"
    uk_standings.top_team = "Liverpool"
    uk_standings.next_match = ""
    uk_standings.url = "https://www.premierleague.com/tables"
    
    sp_standings = self.new 
    sp_standings.name = "La Liga Standings"
    sp_standings.top_team = "Barcelona"
    sp_standings.bottom_team = "Gijon"
    sp_standings.url = "https://www.laliga.com/en-US/laliga-santander/classification"
    
    ger_standings = self.new 
    ger_standings.name = "Bundesliga.1 Standings"
    ger_standings.top_team = "Bayern Munchen"
    ger_standings.bottom_team = "Paderborn"
    ger_standings.url = "https://www.bundesliga.com/en/bundesliga/table"
    
    
    
    [uk_standings,sp_standings,ger_standings]
  end
  
  
  def self.scrape_leagues
    
  end
  
  def self.uk
  doc = Nokogiri::HTML(open("https://www.premierleague.com/tables"))
  top_team = doc.css("tr.tableDark").attribute("data-filtered-table-row-name").value
  next_match =doc.css("tr.tableDark span.visuallyHidden").text
  binding.pry
  end
  
  def self.spain
    doc = Nokogiri::HTML(open("https://www.transfermarkt.us/primera-division/tabelle/wettbewerb/ES1/saison_id/2019"))
    name = doc.css("div p")
    teams = doc.css("td.no-border-links.hauptlink a")
    top_team = teams.first.children.text
    binding.pry
  end
  
    
    
    
end