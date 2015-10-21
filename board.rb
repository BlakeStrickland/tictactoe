
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

display_board
puts
puts
@board[2][2] = "X"
display_board
