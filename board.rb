
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


puts "Let's play!"
display_board

puts "Enter your move: "
move = gets.chomp
update_board(move)
display_board
