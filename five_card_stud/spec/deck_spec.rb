require 'rspec'
require 'deck'

describe Deck do
  
  describe '#initialize' do
  subject(:dealer1) {Deck.new}
    
    it 'creates a deck of 52 cards' do
      expect(dealer1.deck.length).to eq(52)
    end
    
    it 'makes sure that every card is unique' do
      expect(dealer1.deck).to eq(dealer1.deck.uniq)
    end
    
    it 'fills the deck with card objects' do
      expect(dealer1.deck.all? {|card| card.is_a? Card }).to be(true)
    end
      
  end
  
end