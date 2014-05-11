class Checkerboard
  def initialize(_)
  end

  def to_s
    rows = []
    rows << present_row(["B", "W"])
    rows << present_row(["W",  "B"])
    rows.map{ |row| "#{row}\n" }.join
  end

  def present_row args
    args.join ' '
  end
end
