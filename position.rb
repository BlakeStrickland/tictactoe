require 'byebug'
class Position
  attr_reader :x, :y

  def validate_move?(move, new_board)

    move_hash = {"A" => 0, "B" => 1, "C" => 2}
    y = move[1..-1].to_i - 1
    x = move_hash[move[0].upcase]
    if (0..2).include?(x) && (y == 0 || y == 1 || y == 2) && new_board.board[x][y] == (" ")
      @x = x
      @y = y
      true
    else
      false
    end
  end
end
