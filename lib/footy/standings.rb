class Footy::Standings
  attr_accessor :name, :table, :top_team,:country, :url
  def self.today
   
    uk_standings = self.new 
    uk_standings.country= "England"
    uk_standings.name = "Premier League"
    uk_standings.top_team = "#{self.uk}"
    uk_standings.url = "https://www.premierleague.com/tables"

    sp_standings = self.new 
    sp_standings.country= "Spain"
    sp_standings.name = "La Liga"
    sp_standings.top_team = "#{self.spain}"
    sp_standings.url = "https://www.laliga.com/en-US/laliga-santander/classification"

    ger_standings = self.new 
    ger_standings.country= "Germany"
    ger_standings.name = "Bundesliga.1"
    ger_standings.top_team = "#{self.ger}"
    ger_standings.url = "https://www.bundesliga.com/en/bundesliga/table"

    [uk_standings,sp_standings,ger_standings]
  end
  
  def self.uk
  doc = Nokogiri::HTML(open("https://www.premierleague.com/tables"))
  top_team = doc.css("tr.tableDark").attribute("data-filtered-table-row-name").value
  top_team
  end
  
  def self.spain
    doc = Nokogiri::HTML(open("https://www.transfermarkt.us/primera-division/tabelle/wettbewerb/ES1/saison_id/2019"))
    name = doc.css("div p")
    teams = doc.css("td.no-border-links.hauptlink a")
    top_team = teams.first.children.text
    top_team
  end
  
  def self.ger
    doc = Nokogiri::HTML(open("https://www.bundesliga.com/en/bundesliga/table"))
    top_team = doc.css("td.team a").attribute("title").text
    top_team
  end
    
    
end