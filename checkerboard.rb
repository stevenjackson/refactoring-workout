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
end
