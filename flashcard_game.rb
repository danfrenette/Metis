class FlashcardGame
  def play
    loop do
      def ask_player_which_deck
        puts "What deck would you like?"
        gets.chomp
      end

      deck = ask_player_which_deck
      if deck == ""
        puts "Fine. You don't need to learn a new language, you've totally got enough going on for you right now anyways."
        break
      elsif deck == "English" #= sets it to something, as in THIS IS THIS; == is more like IF THIS IS THIS
        puts "So, you wanna learn #{deck}? That is a great descision."
      elsif deck == "British English"
        puts "So, you wanna learn #{deck}? That is a great descision."
      else
        puts "I can't teach you that language"
      end
    end
  end

flashcard_game = FlashcardGame.new
flashcard_game.play

end
