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
    rows.map{ |row| row.join(' ') + "\n" }.join
  end

  def row y
    row = []
    size.times do |x|
      if (x + y).even?
        row << "B"
      else
        row << "W"
      end
    end
    row
  end

  class Cell
    attr_reader :x, :y
    def initialize(x, y)
    end


  end
end
