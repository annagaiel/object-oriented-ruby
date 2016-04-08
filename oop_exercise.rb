require 'pry'

class Card

  def initialize(question, answer)
    @question = question
    @answer = answer
  end

  def question
    @question
  end

  def answer
    @answer
  end

  # def check_answer

  # end

end

class Deck

  def initialize(data)
    @list_cards = []
    data.each do |key, value|
      @list_cards << Card.new(key, value)
    end
  end

  def remaining_cards
    @list_cards.size
  end

  def draw_card
    @list_cards.pop
  end



end

trivia_data = {
  "What is the capital of Illinois?" => "Springfield",
  "Is Africa a country or a continent?" => "Continent",
  "Tug of war was once an Olympic event. True or false?" => "True"
}

deck = Deck.new(trivia_data) # deck is an instance of the Deck class

while deck.remaining_cards > 0
  card = deck.draw_card # card is an instance of the Card class
  puts card.question
  user_answer = gets.chomp
  if user_answer.downcase == card.answer.downcase
    puts "Correct!"
  else
    puts "Incorrect!"
  end
end
