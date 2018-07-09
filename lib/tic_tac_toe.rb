def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

WIN_COMBINATIONS = [
                   [0,1,2],
                   [3,4,5],
                   [6,7,8],
                   [0,3,6],
                   [1,4,7],
                   [2,5,8],
                   [0,4,8],
                   [2,4,6]
  ]

def input_to_index(user_input)
  user_input = user_input.to_i - 1
end

def move(board, position, player)
  board[position] = player
end

def position_taken?(board,position)
  (board[position] == "X" || board[position] == "O")? true : false
end

def valid_move?(board, position)
  (!position_taken?(board, position) && position.between?(0,8))? true : false
end

def turn(board)
  puts "Enter a valid position(1-9):"
  user_input = gets.strip
  position = input_to_index(user_input)
  
end

def turn_count(board)
  counter = 0
  board.each do |b|
    if b == "X" || b == "O"
      counter += 1
    end
  end
  counter
end

def current_player(board)
  counter = turn_count(board)
  counter % 2 == 0 ? "X" : "O"
end

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    win_1 = board[0]
    win_2 = board[1]
    win_3 = board[2]
    
    win_pos_1 = board[win_1]
    win_pos_2 = board[win_2]
    win_pos_3 = board[win_3]
    
    if (win_pos_1 == "X" && win_pos_2 == "X" && win_pos_3 == "X") || (win_pos_1 == "O" && win_pos_2 == "O" && win_pos_3 == "O")
      true
    else
      false
    end
end

def full?(board)
  board.all? {|i| (i == "X" || i == "O")}
end

def draw?(board)
  won?(board) || full?(board)
end

def over?(board)
end

def winer(board)
end

def play(board)
end

