#Scraper
class Footy::Standings

 
    @uk_url = "https://www.premierleague.com/tables"
    @spain_url= "https://www.transfermarkt.us/primera-division/tabelle/wettbewerb/ES1/saison_id/2019"
    @ger_url = "https://www.bundesliga.com/en/bundesliga/table"
  
  
  def self.uk
  country = "England"
  league_name = "Premier League"
  doc = Nokogiri::HTML(open(@uk_url))
  top_team = doc.css("tr.tableDark").attribute("data-filtered-table-row-name").value
  top_team
  Footy::Leagues.new(league_name,country,top_team,@uk_url)
  end
  
  def self.spain
    country = "Spain"
    league_name = "La Liga"
    doc = Nokogiri::HTML(open(@spain_url))
    name = doc.css("div p")
    teams = doc.css("td.no-border-links.hauptlink a")
    top_team = teams.first.children.text
    top_team
    Footy::Leagues.new(league_name,country,top_team,@spain_url)
  end
  
  def self.ger
    country  = "Germany"
    league_name = "1. Bundesliga "
    doc = Nokogiri::HTML(open(@ger_url))
    top_team = doc.css("td.team a").attribute("title").text
    top_team
    Footy::Leagues.new(league_name,country,top_team,@ger_url)
  end
    
  def self.all_leagues
      self.uk
      self.spain 
      self.ger
  end
     
    
end