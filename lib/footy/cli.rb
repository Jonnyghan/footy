#CLI Controller

class Footy::CLI
  
  def call
    list_leagues
    menu
    goodbye
  end
  
  def list_leagues
    puts "Big Three Football/Soccer Standings!"
   @standings = Footy::Standings.today
   @standings.each.with_index(1) do |league, i|
     puts "#{i} - #{league.name}"
   end 
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