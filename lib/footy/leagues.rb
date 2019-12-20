  #Organizer
class Footy::Leagues
  attr_accessor :name, :country, :top_team, :url
 
 @@all = [] 

 def initialize(name, country, top_team, url)
   @name = name
   @country = country
   @top_team = top_team
   @url = url
   @@all << self
 end
 
 def self.all 
  @@all
 end
  
  
end