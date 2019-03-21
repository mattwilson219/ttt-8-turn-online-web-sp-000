def display_board(board = [" "," "," "," "," "," "," "," "," "])

  lines = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "#{lines}"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "#{lines}"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(move)
   index = move.to_i - 1
   index
end


def valid_move?(board, index)
  def position_taken?(array, ind)
    if array[ind] == " " || array[ind] == "" || array[ind] == nil
      return false
    else
      return true
    end
  end

  def on_board?(num)
    if num.between?(0, 8) == true
      return true
    else
      return false
    end
  end

  if (position_taken?(board, index)) == false && (on_board?(index) == true)
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return true
else board[index] == "X" || board[index] ==  "O"
    return false
 end
end

def move(board, index, character = "X")
  board[index] = character
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  if !valid_move?(board, index) 
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
