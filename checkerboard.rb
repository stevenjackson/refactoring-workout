class Checkerboard
  attr_reader :size, :board
  def initialize(size)
    @size = size
    @board = build
  end

  def to_s
    board.map{ |row| row.map(&:to_s).join(' ') + "\n" }.join
  end

  def build
    board = Array.new(size) { Array.new(size) }
    size.times do |y|
      size.times do |x|
        board[y][x] = Cell.new(x, y)
      end
    end
    board
  end

  class Cell
    attr_reader :x, :y
    def initialize(x, y)
      @x = x; @y = y
    end

    def to_s
      (x + y).even? ? "B" : "W"
    end
  end
end
