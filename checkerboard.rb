class Checkerboard
  def initialize(_)
  end

  def to_s
    ["B W", "W B"].map{ |row| "#{row}\n" }.join
  end
end
