require "pry"
require "prime"

# Problem 7 again
# Taking the hard way
def prob7again()
  sol7 = 0
  current_prime_count = 2
  current_number = 3
  while current_prime_count < 10001
    is_prime = 1
    current_number += 2
    factor_check = 2
    while current_number >= factor_check**2
      if current_number % factor_check == 0
        is_prime = 0
      end
      factor_check += 1
    end
    if is_prime == 1
      current_prime_count += 1
      sol7 = current_number
    end
  end
  puts sol7
end

prob7again()

# Problem 7
# using the tools I have, but feels like cheating this way
def prob7()
  puts Prime.first(10001)
end

# Problem 6
def prob6()
  sol6 = 0
  sum_of_squares = 0
  for i in (1..100)
    sum_of_squares += i*i
  end
  square_of_sum = 0
  sum = 0
  for i in (1..100)
    sum += i
  end
  square_of_sum = sum * sum
  puts square_of_sum - sum_of_squares
end

# Problem 5
def prob5()
  sol5 = 1
  factor = 20
  while factor > 1
    if sol5 % factor > 0
      checknum = factor
      while checknum > 1
        if sol5 % checknum == 0 && factor % checknum == 0
          sol5 /= checknum
        end
        checknum -= 1
      end
      sol5 *= factor
    end
    factor -= 1
    puts sol5
  end
  puts "Problem 5: #{sol5}"
end

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