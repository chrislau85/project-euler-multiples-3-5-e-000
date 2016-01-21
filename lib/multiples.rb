def collect_multiples(limit)
  multiples = []
  x = 0
  x3 = 0
  x5 = 0

  limit.times do
    x += 1
    x3 = x * 3
    x5 = x * 5
    if x3 < limit
      multiples.push(x3)
    end
    if x5 < limit
       multiples.push(x5)
    end
  end
  return multiples.uniq.sort
end

collect_multiples(10)
collect_multiples(100)
collect_multiples(1000)

def sum_multiples(limit)
  arr =  collect_multiples(limit)
  total = 0
  arr.each{|number| total += number}
  return total
end

sum_multiples(10)
sum_multiples(100)
sum_multiples(1000)
