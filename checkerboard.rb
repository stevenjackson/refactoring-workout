class Checkerboard
  attr_reader :size
  def initialize(size)
    @size = size
  end

  def to_s
    rows = []
    rows << row(0)
    rows << row(1)
    rows.map{ |row| row.join(' ') + "\n" }.join
  end

  def row y
    row = []
    size.times do |x|
      row << pos(x, y)
    end
    row
  end

  def pos x, y
    x == y ? "B" : "W"
  end
end
