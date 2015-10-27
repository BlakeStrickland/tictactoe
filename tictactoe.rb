
require './position'
require './board'


puts "Human vrs Human? Yes or No"
human = gets.chomp.upcase


def computer_move
  x = ["a","b","c"].sample
  y = rand(0..3)
  x+y.to_s
end


if human == "YES"

  puts "Let's play!"
  puts "Player X, enter your name!"
  xname = gets.chomp
  puts "Player O, enter your name!"
  oname = gets.chomp

  new_board = Board.new
  new_board.display_board
  name = xname
  while new_board.board.any? {|x| x.include?(" ")}

    puts "#{name} your move: "
    move = gets.chomp
    if move.empty? || move.length != 2
      puts "Invalid move."
      redo
    end

    position = Position.new
    if position.validate_move?(move, new_board.board)
      new_board.positions << position
      new_board.update_board
      new_board.display_board
    else
      puts "Invalid move2"
      redo
    end

    if position.winning_combo?(new_board.board)
      puts " #{name} wins"
      break
    end
    name == xname ? (name = oname) : (name = xname)
  end
  puts "Game Over"

else
  puts "Human vrs Computer!"
  puts "Let's play!"
  puts "Player X, enter your name!"
  xname = gets.chomp

  computer = "Hal 9000"

  new_board = Board.new
  new_board.display_board
  name = xname
  while new_board.board.any? {|x| x.include?(" ")}

    if name == "Hal 9000"
      position = Position.new
      if position.validate_move?(computer_move, new_board.board)
        puts "HAL GO NOW"
        new_board.positions << position
        new_board.update_board
        new_board.display_board
      else
        redo
      end
      else
        puts "#{name} your move: "
        move = gets.chomp
        if move.empty? || move.length != 2
          puts "Invalid move."
          redo
        end


        position = Position.new
        if position.validate_move?(move, new_board.board)
          new_board.positions << position
          new_board.update_board
          new_board.display_board
        else
          puts "Invalid move2"
          redo
        end


        if position.winning_combo?(new_board.board)
          puts " #{name} wins"
          break
        end

    end
    name == xname ? (name = computer) : (name = xname)
  end
  puts "Game Over"
end
