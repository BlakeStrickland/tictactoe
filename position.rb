class Position
  attr_reader :x, :y

  def initialize
    @move_hash = {"A" => 0, "B" => 1, "C" => 2}
    # @board = [[" "," "," "],[" "," "," "],[" "," "," "]]
    # @move = move
  end

  # def x_move
  #   move[1..-1].to_i - 1
  # end
  #
  # def y_move(@move)
  #   move_hash = {"A" => 0, "B" => 1, "C" => 2}
  #   move_hash[move[0].upcase]
  # end

  def validate_move?(move)
    x = move[1..-1].to_i - 1
    y = @move_hash[move[0].upcase]

    if (x == 0 || x == 1 || x == 2) && (y == 0 || y == 1 || y == 2) && !nil
      @x = y
      @y = x
      true
      # update_board(@move)
      # display_board
    else
      false
    end
  end
end
