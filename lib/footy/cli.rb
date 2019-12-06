#CLI Controller

class Footy::CLI
  
  def call
    list_leagues
    menu
    goodbye
  end
  
  def list_leagues
    puts "Big Six Football/Soccer Standings!"
    puts <<-DOC.gsub /^\s*/, ''
    
    1. England: Premier League
    2. Spain: La Liga
    3. Germany: Bundesliga .1 
    4. France: Ligue 1
    5. Italy: Serie A
    
    DOC
  end
  
  def menu
    input = nil
    while input!= "exit"
    puts "Please select a League or type List for the list again:"
    input = gets.strip.downcase
    case input
    when "1"
      puts "Premier League Standings:"
    when "2"
      puts "La Liga Standings:"
    when "3"
      puts "Bundesliga .1 Standings:"
    when "4"
      puts "Ligue 1 Standings:"
    when "5"
      puts "Serie A Standings:"
    when "list"
      list_leagues
    else 
      puts "Pick a League please!"
      end 
    end
  end
  
  def goodbye
    puts "Bye!, Adios!, Auf Weidersehen!, Au Revoir!, Ciao!"
  end
  
end