require "./card"

class FlashcardGame
  def initialize(decks) #internalize means to make something a part of the internal state
    @decks = decks
  end

  def play
    loop do #do everything inside this block...forever
      list_out_decks #thoughtful naming is key for reducing stress while programming, for both you and other programmers.
      deck = ask_user_which_deck
      if deck
        puts "would play #{deck.name}"
        deck.play
      else
        puts "exiting"
        break
      end
    end
  end

  private

  def list_out_decks
    @decks.each do |deck|
      puts deck.name
    end
  end

  def ask_user_which_deck
    print "Which deck would you like (leave blank to exit) > "
    requested_deck_name = gets.chomp
    @decks.find { |deck| deck.name == requested_deck_name }
  end
end

decks = []

spanish_cards = []
spanish_cards << Card.new("Gato", "Cat")
spanish_cards << Card.new("Perro", "Dog")
decks << Deck.new("Spanish", spanish_cards)

japanese_cards = []
japanese_cards << Card.new("Neko", "Cat")
japanese_cards << Card.new("Inu", "Dog")
decks << Deck.new("Japanese", japanese_cards)

flashcard_game = FlashcardGame.new(decks)
flashcard_game.play

#array is used to display a collection of things. Hash is used to represent
#things in pairs, they are also written with curly brackets as opposed to
#regular brackets, and the contents are referred to as keys and values as
#opposed to elements.
#
#hash = {"Key" => "Value"} ex {"Dan" => "Frenette"}
#
#To get information out of a hash, pass a key and it will return the value -
#this CANNOT be done in vis versa.
#hash["key"]
#keys also have to be unique. You can't link 1 key to more than 1 value
#
#
#SYMBOLS
#marked by a colon :
#:Dan
#you can also use symbols to write hashes, and it's a shorter syntax!
#hash = {key: value, key: value}
