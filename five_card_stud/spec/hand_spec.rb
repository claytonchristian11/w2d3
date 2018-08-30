require 'rspec'
require 'hand'

describe Hand do
  
  describe '#initialize' do
    let(:player1) {Hand.new(Card.new(:w,2), Card.new(:w,2), Card.new(:w,2), Card.new(:w,2), Card.new(:w,2))}
    
    it 'accepts 5 cards' do
      expect(player1.hand.length).to eq(5)
      expect(player1.hand.all? {|card| card.is_a? Card}).to be(true)
    end
  end
  
  describe '#calculate_hand' do
    
    
    it 'returns the highest hand when there is pair' do
      player1 = Hand.new([Card.new(:D, 2), Card.new(:C, 3), Card.new(:C, 2), Card.new(:S , 13), Card.new(:H, 7)])
      
      expect(player1.calculate_hand(player1)).to eq([pair])
    end
    
    it 'returns the highest hand when there is a straight' do
      let(:player1) {Hand.new(Card.new(:D, 3), Card.new(:C, 4), Card.new(:C, 2), Card.new(:S , 6), Card.new(:H, 5))}

      expect(player1.calculate_hand).to eq([straight])
    end
    
    it 'returns the highest hand when there is a flush' do 
      let(:player1) {Hand.new(Card.new(:D, 2), Card.new(:D, 3), Card.new(:D, 8), Card.new(:D , 13), Card.new(:D, 7))}

      expect(player1.calculate_hand).to eq([flush])
    end  
    
  end
end