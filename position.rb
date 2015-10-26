require 'byebug'
class Position
  attr_reader :x, :y

  def validate_move?(move, board)

    move_hash = {"A" => 0, "B" => 1, "C" => 2}
    y = move[1..-1].to_i - 1
    x = move_hash[move[0].upcase]
    if (0..2).include?(x) && (y == 0 || y == 1 || y == 2) && board[x][y] == (" ")
      @x = x
      @y = y
      true
    else
      false
    end
  end

  def winning_combo?(board)

    #all of "X" possible winnings
    if board[0][0]=="X" && board[1][0]=="X" && board[2][0]=="X"
      return true
    elsif board[0][1]=="X" && board[1][1]=="X" && board[2][1]=="X"
      return true
    elsif board[0][2]=="X" && board[1][2]=="X" && board[2][2]=="X"
      return true
    elsif board[0][0]=="X" && board[0][1]=="X" && board[0][2]=="X"
      return true
    elsif board[1][0]=="X" && board[1][1]=="X" && board[1][2]=="X"
      return true
    elsif board[2][0]=="X" && board[2][1]=="X" && board[2][2]=="X"
      return true
    elsif board[0][0]=="X" && board[1][1]=="X" && board[2][2]=="X"
      return true
    elsif board[0][2]=="X" && board[1][1]=="X" && board[2][0]=="X"
      return true
      #all of "O" possible winnings
    elsif board[0][0]=="O" && board[1][0]=="O" && board[2][0]=="O"
      return true
    elsif board[0][1]=="O" && board[1][1]=="O" && board[2][1]=="O"
      return true
    elsif board[0][2]=="O" && board[1][2]=="O" && board[2][2]=="O"
      return true
    elsif board[0][0]=="O" && board[0][1]=="O" && board[0][2]=="O"
      return true
    elsif board[1][0]=="O" && board[1][1]=="O" && board[1][2]=="O"
      return true
    elsif board[2][0]=="O" && board[2][1]=="O" && board[2][2]=="O"
      return true
    elsif board[0][0]=="O" && board[1][1]=="O" && board[2][2]=="O"
      return true
    elsif board[0][2]=="O" && board[1][1]=="O" && board[2][0]=="O"
      return true





    #
    # [0,0][1,0][2,0]
    # [0,1][1,1][2,1]
    # [0,2][1,2][2,2]
    #
    # [0,0][0,1][0,2]
    # [1,0][1,1][1,2]
    # [2,0][2,1][2,2]
    #
    # [0,0][1,1][2,2]
    # [0,2][1,1][2,0]

  end
  end

end
