#Organizer
class Footy::Leagues
  attr_accessor :name, :country, :top_team, :url, :current_champ
 
 @@all = [] 

 def initialize(name, country, top_team, url, current_champ)
   @name = name
   @country = country
   @top_team = top_team
   @url = url
   @current_champ = current_champ
   @@all << self
 end
 
 def self.all 
  @@all
 end
  
  
end