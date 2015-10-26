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
    next_move = "X"
    self.positions.each do |position|
      @board[position.x][position.y] = next_move
      if next_move == "X"
        next_move = "O"
      else
        next_move = "X"
      end
    end
  end
end
