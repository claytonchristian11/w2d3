class Deck
  attr_reader :deck
  
  CONST_SUITES = [:D, :H, :C, :S]
  CONST_VALUES = (2..14).to_a
  
  def initialize
    @deck = []
    CONST_SUITES.each do |s|
      CONST_VALUES.each do |v|
        @deck << Card.new(s,v)
      end
    end 
  end
  
  
end
