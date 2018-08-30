class Hand
  
  attr_reader :hand
  HAND_RANKS = %w(high_card, pair, two_pair, three_of_a_kind, straight, flush, full_house, four_of_a_king, straight_flush)
  
  def initialize(card1, card2, card3, card4, card5)
    @hand = [card1,card2,card3,card4,card5]
  end  
  
  def calculate_hand(hand)
    return_arr = []
    
    suite_hash = Hash.new(0)
    value_hash = Hash.new(0)
    
    hand.each do |card|
      suite_hash[card.suite] += 1
      value_hash[card.value] += 1
    end
    
    value_hash_values = value_hash.values
    suite_hash_values = suite_hash.values
    
    if suite_hash_values.include?(5) #&& straight logic 
      return_arr << HAND_RANKS[8]
    elsif value_hash_values.include?(4)
      return_arr << HAND_RANKS[7]
    elsif value_hash_values.include?(3) && value_hash_values.include?(2)
      return_arr << HAND_RANKS[6]
    elsif suite_hash_values.include?(5)
      return_arr << HAND_RANKS[5]
  #elsif straight logic
elsif value_hash_values.include?(3)
      return_arr << HAND_RANKS[3]
    elsif value_hash_values.count(2) == 2
      return_arr << HAND_RANKS[2]
    elsif value_hash_values.count(2) == 1
      return_arr << HAND_RANKS[1]
    else
      return_arr << HAND_RANKS[0]
    end
    
      return_arr
  end
  

  
end
