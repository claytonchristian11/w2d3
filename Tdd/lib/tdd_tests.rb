require 'tdd_tests.rb'
require 'byebug'
def my_uniq(arr)
  new_arr = []
  arr.each do |el|
    if new_arr.include?(el)
      next
    else
      new_arr.push(el)
    end
  end
  new_arr
end 

def two_sum(arr)
  new_arr = []
  arr.each_index do |idx|
    (idx + 1..arr.length - 1).each do |idx2|
      new_arr << [idx, idx2] if arr[idx] + arr[idx2] == 0
    end
  end
  new_arr
end

def my_transpose(arr)
  return [] if arr.empty?
  cols = []
  i = 0
  while i < arr[0].count
    j = 0
    cols[i] = []
    while j < arr.count
      cols[i] << arr[j][i]
      j += 1
    end
    i += 1
  end
  
  return cols
  
end

def stock_picker(arr)
  local_max = arr[1] - arr[0]
  local_i1 = 0
  local_i2 = 0
  (0..arr.length - 2).each do |idx|
    ((idx + 1)..arr.length-1).each do |idx2|
      if arr[idx2] - arr[idx] > local_max
        local_i1 = idx
        local_i2 = idx2
        local_max = arr[idx2] - arr[idx]
      end
    end
  end
  [local_i1, local_i2]
end

def move(start_stack, end_stack, current_board = [[3,2,1],[],[]])
  if current_board[start_stack].empty?
  elsif current_board[end_stack].empty?
    current_board[end_stack] << current_board[start_stack].shift  
  elsif current_board[end_stack].last > current_board[start_stack].last
    current_board[end_stack] << current_board[start_stack].shift
  end
  current_board
end

def won?(board)
  return true if (board[1] == [3,2,1] || board[2] == [3,2,1]) 
  false
end