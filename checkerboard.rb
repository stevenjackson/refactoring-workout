class Checkerboard
  def initialize(_)
  end

  def to_s
    ["B W\n", "W B\n"].map{|row| row}.join
  end
end
