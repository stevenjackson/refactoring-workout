class Checkerboard
  attr_reader :size
  def initialize(size)
    @size = size
  end

  def to_s
    rows = []
    rows << row(1)
    rows << row(2)
    rows.map{ |row| row.join(' ') + "\n" }.join
  end

  def row y
    row = []
    if y == 1
      row << pos(1, y)
      row << pos(2, y)
    else
      row = ["W", "B"]
    end
  end

  def pos x, y
    x == y ? "B" : "W"
  end
end
