require "./round" #./means it's in the same directory as the file you're in.

class GuessingGame#CamelCase for classes
  NUMBER_OF_ROUNDS = 3 #Constants such as ROUNDS are done in all caps
  def initialize #initialize is a special method that ruby provides. It's the method that allows you to prepare the instance of a particular class.
    @total_guesses = 0#Use of underscores indicates snake_case, this should be the default for naming things.
    @total_wins = 0#instance variables are indicated by an @. It's very useful because it allows a variable to be shared throughout the instance by expanding its scope.
  end
  
  def play
    puts "Hello! Welcome to the game!"
    NUMBER_OF_ROUNDS.times do
      puts "---NEW GAME WOO!---"
      print "Pick a number between 1 and 5. You have 3 guesses to get it right."
      round = Round.new #This is a local (regular) variable. It can only be accessed on this scope. round = isntance. Round = class. new = method of the instance (round).
      round.play
      puts "You made #{round.number_of_guesses} guesses bro." #This is called string interporlation (#{}) it's basically an eloquent way of adding in a variable to a string 
      @total_guesses += round.number_of_guesses
      if round.won?
        @total_wins+=1
      end
      puts "You won #{@total_wins} times."
    end
    
    puts "Average guesses #{average_guesses}. You. ARE. AWESOME!!!!"
    puts "Total wins #{@total_wins}"
  end

  def average_guesses
    @total_guesses.to_f / NUMBER_OF_ROUNDS
  end

  guessing_game = GuessingGame.new
  guessing_game.play
end #Making sure you use the right amount of "ends" is paramount. Make the habit of indenting to avoid this. Color schemes can also help a little bit

#Scope works in a monodirectional way. Code on deeper levels can access
#information from lower (outer levels). The idea that works for me is the
#information accessible works out by pushing horizontally. However, it can only access
#information that is on the same path back out to the lower level - unless of
#course the information in question is an instance variable.
