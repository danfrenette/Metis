class Round# scopes are used to hide code. That's why we usually start files by writing them. It helps to organize and hide.
  MAXIMUM_GUESSES = 3 #constants are used for fixed values throughout the life of the program.
  def initialize
    @answer = rand(1..5)
    @number_of_guesses = 0
  end

  attr_reader :number_of_guesses #I'm still not sure what this does. Must remember to ask.

  def play
    MAXIMUM_GUESSES.times do
      guess = gets
      guess = guess.chomp.to_i
      @number_of_guesses += 1

      puts "Answer is #{@answer}; guess was #{guess}"
      if correct?(guess)
        tell_user_theyre_correct
        @won = true
        break
      else
        tell_user_theyre_incorrect
      end
    end
  end

  def number_of_guesses
    @number_of_guesses
  end

  def won?
    @won
  end

  private#anything after the private keyword hides any methods. Research this more to get a better idea.
  
  def tell_user_theyre_correct
    puts "You might actually be a wizard. Wow."
  end
  
  def tell_user_theyre_incorrect
    puts "You are so totally not a wizard."
  end

  def correct?(guess)
    guess == @answer
  end
end
