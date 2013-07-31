require "pry"
require "prime"

# Problem 11
def prob11()
  sol11 = 0
  left_right = 0
  up_down = 0
  down_right = 0
  down_left = 0
  grid_string = "08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08 49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00 81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65 52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91 22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80 24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50 32 98 81 28 64 23 67 10 26 38 40 67 59 54 70 66 18 38 64 70 67 26 20 68 02 62 12 20 95 63 94 39 63 08 40 91 66 49 94 21 24 55 58 05 66 73 99 26 97 17 78 78 96 83 14 88 34 89 63 72 21 36 23 09 75 00 76 44 20 45 35 14 00 61 33 97 34 31 33 95 78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92 16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57 86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58 19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40 04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66 88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69 04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36 20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16 20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54 01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48"
  arr = grid_string.split(" ").map(&:to_i)
  for i in (0..339)
    prod = arr[i] * arr[i+20] * arr[i+40] * arr[i+60]
    if prod > sol11
      sol11 = prod
    end
  end
  for i in (0..396)
    if i % 20 < 17
      prod = arr[i] * arr[i+1] * arr[i+2] * arr[i+3]
      if prod > sol11
        sol11 = prod
      end
    end
  end
  for i in (0..336)
    if i % 20 < 17
      prod = arr[i] * arr[i+21] * arr[i+42] * arr[i+63]
      if prod > sol11
        sol11 = prod
      end
    end
  end
  for i in (0..339)
    if i % 20 > 2
      prod = arr[i] * arr[i+19] * arr[i+38] * arr[i+57]
      if prod > sol11
        sol11 = prod
      end
    end
  end
  puts sol11
end

prob11()

# Problem 10
# Inefficient solution - find a better way
def prob10()
  sol10 = 2
  current_number = 3
  while current_number < 2000000
    is_prime = 1
    factor_check = 2
    while current_number >= factor_check**2 && is_prime == 1
      if current_number % factor_check == 0
        is_prime = 0
      end
      factor_check += 1
    end
    if is_prime == 1
      sol10 += current_number
      puts current_number
    end
    current_number += 2
  end
  puts sol10
end

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