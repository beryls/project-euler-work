require "pry"
require "prime"


# Problem 9
def prob9()
  sol9 = 0
  a = 0
  b = 0
  c = 0
  arr = []
  for i in (1..999)
    arr.push(i**2)
  end
  for i in (1..999)
    for j in (2..999)
      k = 1000 - i - j
      if k**2 == i**2 + j**2
        a = i
        b = j
        c = k
        sol9 = i * j * k
        puts sol9
        return
      end
    end
  end
end

prob9()

# Problem 8
def prob8()
  sol8 = 0
  super_big_num = 7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450
  arr = super_big_num.to_s.split('')
  for i in (0..995)
    product = arr[i].to_i * arr[i+1].to_i * arr[i+2].to_i * arr[i+3].to_i * arr[i+4].to_i
    if product > sol8
      sol8 = product
    end
  end
  puts sol8
end

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