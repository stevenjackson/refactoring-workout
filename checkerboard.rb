class Checkerboard
  attr_reader :size
  def initialize(size)
    @size = size
  end

  def to_s
    rows = []
    size.times do |y|
      rows << row(y)
    end
    rows.map{ |row| row.map(&:to_s).join(' ') + "\n" }.join
  end

  def row y
    row = []
    size.times do |x|
      row << Cell.new(x, y).to_s
    end
    row
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
