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

  def value
    last_move = (positions.length % 2 == 0 ? "O" : "X")
    # position = positions.last
  end

  def winning_lines
    [ [[0,0],[1,0],[2,0]],
      [[0,1],[1,1],[2,1]],
      [[0,2],[1,2],[2,2]],
      [[0,0],[0,1],[0,2]],
      [[1,0],[1,1],[1,2]],
      [[2,0],[2,1],[2,2]],
      [[0,0],[1,1],[2,2]],
      [[0,2],[1,1],[2,0]]
    ]
  end

  def winning_combo?(board)
    winning_lines.each do |line|
      return true if line.all? {|c| board[c[0]][c[1]] == "X"}
      return true if line.all? {|c| board[c[0]][c[1]] == "O"}
    end
    false
  end
end
