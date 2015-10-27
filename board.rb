class Board
  attr_reader :positions, :board
  def initialize
    # @board = [[Position.new,Position.new,Position.new],
    #     [Position.new,Position.new,Position.new],
    #     [Position.new,Position.new,Position.new]]

    @board = [[" "," "," "],[" "," "," "],[" "," "," "]]
    @positions = []
  end

  def display_board
    board_display = ""
    (0..2).each do |row|
      (0..2).each do |col|
        board_display += @board[row][col]
        board_display += "|" unless col == 2
      end
      puts board_display
      puts "-----" unless row == 2
      board_display = ""
    end
  end

  def update_board
    last_move = (positions.length % 2 == 0 ? "O" : "X")
    position = positions.last
    @board[position.x][position.y] = last_move
    puts "i set poistion #{position.x},#{position.y} to #{last_move}"
  end
end
