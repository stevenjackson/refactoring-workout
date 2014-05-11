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
      if (x + y).even?
        row << "B"
      else
        row << "W"
      end
    end
    row
  end
end
