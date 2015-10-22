class Board
  attr_reader :positions, :board
  def initialize
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
    self.positions.each do |position|
      @board[position.x][position.y] = "X"
    end
  end

end
