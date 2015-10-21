
# puts "_|_|_"
# puts "_|_|_"
# puts " | | "
@board = [[" "," "," "],[" "," "," "],[" "," "," "]]

def display_board
  board_display = ""
  (0..2).each do |row|
    (0..2).each do |col|
      board_display += @board[row][col]
      board_display += " | " unless col == 2
    end
    puts board_display
    puts "---------" unless row == 2
    board_display = ""
  end
end

def x_move(move)
  move[1..-1].to_i - 1
end

def y_move(move)
  move_hash = {"A" => 0, "B" => 1, "C" => 2}
  move_hash[move[0].upcase]
end

def update_board(move)
  @board[y_move(move)][x_move(move)] = "X"
end

def validate_move(move)
  move_hash = {"A" => 0, "B" => 1, "C" => 2}
  x = move[1..-1].to_i - 1
  y =move_hash[move[0].upcase]


  if (x == 0 || x == 1 || x == 2) && (y == 0 || y == 1 || y == 2) && !nil
    update_board(move)
    display_board
  else
    puts "Invalid move"
  end
end

def is_empty?(move)
  return true if move.empty? || move.nil?
  return false
end

puts "Let's play!"
display_board
loop do
  puts "Enter your move: "
  move = gets.chomp
  if move.empty?
    puts "Invalid move."
    redo
  end
  move = move[0] + move[1]
  validate_move(move)

end
