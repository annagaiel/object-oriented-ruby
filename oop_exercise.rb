require 'pry'

class Card
  attr_reader :question, :answer, :options
  def initialize(hash)
    @question = hash[:question]
    @answer = hash[:answer]
    @options = hash[:options]
  end

end

class Deck

  def initialize(data)
    @list_cards = []
    data.each do |hash|
      @list_cards << Card.new(hash)
    end
  end

  def remaining_cards
    @list_cards.size
  end

  def draw_card
    @list_cards.pop
  end

end

trivia_data = [
  {
    question:'What is the capital of Illinois?',
    options:['a. Montgomery','b. Sacaramento','c. Springfield','d. Denver'],
    answer: 'c'
  },
  {
    question:'What is the capital of Arizona',
    options:['a. Phoenix','b. Dover','c. Atlanta','d. Boise'],
    answer: 'a'
  },
  {
    question:'What is the capital of California',
    options:['a. Sacramento','b. Dover','c. Atlanta','d. Boise'],
    answer: 'a'
  },
              ]

deck = Deck.new(trivia_data) # deck is an instance of the Deck class
while deck.remaining_cards > 0
  card = deck.draw_card # card is an instance of the Card class
  puts card.question
  puts "#{card.options.join(', ')}"
  user_answer = gets.chomp
  if user_answer.downcase == card.answer.downcase
    puts "Correct!"
  else
    puts "Incorrect!"
  end
end
