require "./deck"
class FlashcardGame
  def initialize(decks)
    @decks = decks
  end
  
  def ask_player_which_deck
    puts "What deck would you like?"
    requested_deck_name = gets.chomp
    @decks.find { |deck| deck.name == requested_deck_name}
  end
  
def list_all_decks
    @decks.each { |deck| puts deck.name }
  end

  def play
    loop do
      list_all_decks
      deck = ask_player_which_deck
      if deck
        puts "I can teach you #{deck.name}"
      else
        puts "sorry, no deck found"
        break 
      end
    end
  end
end

decks = []
decks.push(Deck.new({"Name" => "American English"}))
decks.push(Deck.new({"Name" => "British English"}))
decks.push(Deck.new({"Name" => "Austrailian English"}))

vietnamese_game = FlashcardGame.new(decks)
vietnamese_game.play

