class Checkerboard
  attr_reader :board
  def initialize(size)
    @board = build(size)
  end

  def to_s
    board.map{ |row| row.map(&:to_s).join(' ') + "\n" }.join
  end

  def build(size)
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
