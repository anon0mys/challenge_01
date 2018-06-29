class Fibonacci
  def self.sequence(count)
    sequence = []
    sequence << 0 unless count == 0
    sequence << 1 unless count == 1
    until sequence.length == count
      sequence << sequence[-2] + sequence[-1]
    end
    sequence
  end

  def self.first_hundred
    self.sequence(100)
  end
end
