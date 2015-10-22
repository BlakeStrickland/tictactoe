class Position
  attr_reader :x, :y

  def validate_move?(move)
    position = []
    move_hash = {"A" => 0, "B" => 1, "C" => 2}

    x = move[1..-1].to_i - 1
    y = move_hash[move[0].upcase]
    if (x == 0 || x == 1 || x == 2) && (y == 0 || y == 1 || y == 2)
      @x = y
      @y = x
      true
    else
      false
    end
  end
end
