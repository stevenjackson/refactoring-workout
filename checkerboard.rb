class Checkerboard
  attr_reader :size
  def initialize(size)
    @size = size
  end

  def to_s
    rows = Array.new(size) { Array.new(size) }
    size.times do |y|
      size.times do |x|
        rows[y][x] = Cell.new(x, y)
      end
    end
    rows.map{ |row| row.map(&:to_s).join(' ') + "\n" }.join
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
