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
    if y == 1
      ["B", "W"]
    else
      ["W", "B"]
    end
  end
end
