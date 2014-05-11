class Checkerboard
  attr_reader :size
  def initialize(size)
    @size = size
  end

  def to_s
    rows = []
    rows << ["B", "W"]
    rows << ["W",  "B"]
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
