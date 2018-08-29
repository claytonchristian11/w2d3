require 'rspec'
require 'tdd_tests.rb'

describe '#my_uniq' do 
  
  it 'removes duplicates from an array' do 
    expect(my_uniq([1,2,2,3])).to eq([1,2,3])
  end 
  
  it 'returns the same array when no duplicates are given' do 
    expect(my_uniq([1,2,3])).to eq([1,2,3])
  end
  
  it 'when the array is empty, returns empty array' do 
    expect(my_uniq([])).to eq([])
  end
end

describe '#two_sum' do
  it 'finds indices of the elements whose values sum to zero' do
    expect(two_sum([1,9,4,-9])).to eq([[1,3]])
  end
  
  it 'returns an empty when no pairs are found' do
    expect(two_sum([1,9,4,5])).to eq([])
  end
  
  it 'will return pairs in order of increasing index' do
    expect(two_sum([-1,0,2,-2,1])).to eq([[0,4],[2,3]])
  end
end

describe '#my_transpose' do
  it 'will transpose a 2x2 matrix' do
    expect(my_transpose([[1,2],[3,4]])).to eq([[1,3],[2,4]])
  end
  
  it 'will transpose a 3x3 matrix' do
    expect(my_transpose([[0, 1, 2],[3, 4, 5],[6, 7, 8]])).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
  end
  
  it 'when the array is empty, returns empty array' do 
    expect(my_transpose([])).to eq([])
  end 
  
end

describe '#stock_picker' do
  it 'will return the pair of days with the highest profit' do
    expect(stock_picker([0,2,4,7,8,5,4])).to eq([0,4])
  end
  
  it 'will return the first pair if two pairs have the same profit' do
    expect(stock_picker([0,2,4,7,8,5,8])).to eq([0,4])
  end
  
end

describe '#move' do
  it "won't move a bigger disc onto a smaller disc" do 
    expect(move(0,2,[[3],[2],[1]])).to eq([[3],[2],[1]])
  end
   
  it 'will move a smaller disc onto a bigger disc' do 
    expect(move(2,1,[[3],[2],[1]])).to eq([[3],[2,1],[]])
  end 
  
  it 'will not grab a disc from an empty stack' do 
    expect(move(0,1,[[],[3,2],[1]])).to eq([[],[3,2],[1]])
  end 
   
end

describe '#won?' do 
  
  it 'ends the game when either pegs two or three have all of the discs on it' do
    expect(won?([[],[3,2,1],[]])).to eq(true)
  end
  
  it 'does not end the game when all of the discs are on the first peg' do
    expect(won?([[3,2,1],[],[]])).to eq(false)
  end
  
  it 'does not falsely end the game' do 
    expect(won?([[3],[2],[1]])).to eq(false)
  end 
  
end
