#CLI Controller

class Footy::CLI
  
  def start 
    Footy::Standings.all_leagues
    list_leagues
    menu
    goodbye
  end
  
  def list_leagues
    puts "Big Three Football/Soccer League Top Clubs!!"
    
  end
   
   
  
  def menu
    input = nil
    while input!= "exit"
    puts "Please select a League or type List for the list again:"
    input = gets.strip.downcase
    if input.to_i > 0
    the_league = @standings[input.to_i-1]
      puts "The #{the_league.name} leaders are: #{the_league.top_team.upcase}!\n\n"
      
      puts "Be sure to check on #{the_league.top_team} again at the end of the season!\n\n"
      
      puts "For more information about #{the_league.country}'s league table, please visit: #{the_league.url}\n\n"
    elsif input == "list"
      list_leagues
    else 
      puts "Pick a League please!"
      end 
    end
  end
  
  def goodbye
    puts "Bye!, Adios!, Auf Weidersehen!"
  end
  
end