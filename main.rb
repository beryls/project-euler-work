require "pry"

# Problem 4
def prob4()
  sol4 = 0
  firstnum = 999
  while firstnum * 999 > sol4
    secondnum = 999
    pal = 0
    while pal == 0 && secondnum >= 100
      product = firstnum * secondnum
      rev = product.to_s.reverse.to_i
      if product == rev
        pal = product
        if pal > sol4
          sol4 = pal
        end
      end
      secondnum -= 1
    end
    firstnum -= 1
  end
  puts "Problem 4: #{sol4}"
end

# Problem 3
def prob3()
  sol3 = 0
  bignum = 600851475143
  divisor = 2
  while bignum > 1
    while bignum % divisor == 0
      bignum /= divisor
      sol3 = divisor
    end
    divisor += 1
  end
  puts "Problem 3: #{sol3}"
end

# Problem 2
def prob2()
  sol2 = 0
  last = 1
  current = 1
  while current < 4000000
    if current % 2 == 0
      sol2 += current
    end
    holder = last + current
    last = current
    current = holder
  end
  puts "Problem 2: #{sol2}"
end

# Problem 1
def prob1()
  sol1 = 0
  for i in (1...1000)
    if i % 3 == 0 || i % 5 == 0
      sol1 += i
    end
  end
  puts "Problem 1: #{sol1}"
end