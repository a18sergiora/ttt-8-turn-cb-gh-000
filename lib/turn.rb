
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board,index)
  if board[index]==(" ") || board[index]=="" || board[index]==nil
    return false
  else
    return true
  end
end

# code your #valid_move? method here
def valid_move?(board,index)
  if !position_taken?(board,index) && index.between?(1,9)
    return true
  else
    return false
  end
end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def move(board, index, current_player = "X")
  board[index] = current_player
end

def turn (board)
  turn = 0
  while turn < 9
  puts "Please enter 1-9: "
  input = gets.strip
  input_to_index(input.to_i-1)

  if !valid_move?(board,input.to_i)
  until valid_move?(board,input.to_i)==true
    puts "Please enter 1-9: "
    input = gets.strip
  end
  end
  move(board,input.to_i,current_player="X")
  display_board(board)
  turn+=1
  end
end
