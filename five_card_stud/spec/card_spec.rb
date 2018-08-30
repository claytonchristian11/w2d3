require 'rspec'
require 'card'

describe Card do
  describe '#initialize' do
  subject(:card1) {Card.new(:D, :eight)}
    
    it "sets a suite" do
      expect(card1.suite).to eq(:D)
    end
    
    it "sets a value" do
      expect(card1.value).to eq(:eight)
    end
    
  end
  
end