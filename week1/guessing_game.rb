class FlashcardGame
  def initialize(decks)
      @decks = decks
  end
  def list_all_decks
      puts decks
  end
  def ask_player_which_deck
    puts "What deck would you like?"
    gets.chomp
  end

  def play
    loop do
      list_all_decks
      deck = ask_player_which_deck
      if deck == ""
        puts "Fine. You don't need to learn a new language, you've totally got "
        break
      elsif deck == "English"
        #= sets it to something, as in THIS IS THIS; == is more like IF THIS IS THIS
        puts "So, you wanna learn #{deck}? That is a great descision."
      elsif deck == "British English"
        puts "So, you wanna learn #{deck}? That is a great descision."
      elsif deck == "Austrailian English"
        puts "So, you wanna learn #{deck}? That is a great descision."
      else
        puts "I can't teach you that language"
      end
    end
  end

end

decks = []
decks.push("English", "British English", "Austrailian English")
decks.each { |deck| puts deck }

flashcard_game = FlashcardGame.new
flashcard_game.play
