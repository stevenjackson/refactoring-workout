class Checkerboard
  def initialize(_)
  end

  def to_s
    rows = []
    rows << ["B", "W"]
    rows << ["W",  "B"]
    rows.map{ |row| present_row row }.map{ |row| "#{row}\n" }.join
  end

  def present_row args
    args.join ' '
  end
end
