class Checkerboard
  def initialize(_)
  end

  def to_s
    rows = []
    rows << "B W"
    rows << "W B"
    rows.map{ |row| "#{row}\n" }.join
  end
end
