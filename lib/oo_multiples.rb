class Multiples

  # constructor method
  def initialize(limit)
    @limit = limit
    sum_multiples
  end

  def collect_multiples
    multiples = []
    x = 0
    x3 = 0
    x5 = 0

    @limit.times do
      x += 1
      x3 = x * 3
      x5 = x * 5
      if x3 < @limit
        multiples.push(x3)
      end
      if x5 < @limit
         multiples.push(x5)
      end
    end
    return multiples.uniq.sort
  end

  def sum_multiples
    arr =  collect_multiples
    total = 0
    arr.each{|number| total += number}
    return total
  end
end

multiples = Multiples.new(10)
multiples = Multiples.new(100)
multiples = Multiples.new(1000)
