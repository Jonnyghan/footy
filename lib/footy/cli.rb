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
    @leagues=Footy::Leagues.all
    @leagues.each_with_index do |league, i|
    puts "#{i + 1}. #{league.country} - #{league.name}"
    end 
  end
   
   
  
  def menu
    input = nil
    while input!= "exit"
    puts "Please select a League or type List for the list again:"
    input = gets.strip.downcase
    if (1..3).include?(input.to_i) 
    the_league = @leagues[input.to_i-1]
      puts "The #{the_league.name} leaders are: #{the_league.top_team.upcase}!\n\n"
      
      puts "ATTENTION, ATENCIÓN, ACHTUNG! #{the_league.top_team} is on top for now BUT will they win \nthe league? Check back in May to see!\n\n"
      
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