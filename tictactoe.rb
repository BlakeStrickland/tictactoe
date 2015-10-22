
require './position'
require './board'

puts "Let's play!"
new_board = Board.new
position = Position.new

new_board.display_board

while new_board.board.any? {|x| x.include?(" ")}

  puts "Enter your move: "
  move = gets.chomp
  if move.empty? || move.length != 2
    puts "Invalid move."
    redo
  end


  if position.validate_move?(move)
    new_board.positions << position
    new_board.update_board
    new_board.display_board
  else
    puts "Invalid move2"
  end
end
puts "Game Over"
