def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  user_index = input_to_index(user_input)
  valid_move?(board, user_index)
  until valid_move?(board, user_index) == true
    puts "Please enter 1-9:"
    user_input = gets.strip
    user_index = input_to_index(user_input)
    valid_move?(board, user_index)
  end
  a_value = "X"
  move(board, user_index, a_value)
  display_board(board)
end

# code your input_to_index and move method here!
def input_to_index(user_input)
  return user_input.to_i - 1
end

def move(board, user_index, a_value = "X")
  board[user_index] = a_value
end

def valid_move?(board, index)
  if position_taken?(board, index) == false
    return true
  else
    return false
  end
  if index.between?(0,8) == true
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end
