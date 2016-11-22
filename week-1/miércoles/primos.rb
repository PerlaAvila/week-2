def prime_factors(num)
  prime_array = []    
  p = 2

  # if num < 2
  #   return p
  # end

  while p < num
    if num % p == 0
      prime_array.push(p)
      num = num / p
    end
    p +=1
  end
prime_array << num
prime_array.sort
end

p prime_factors(4) #=> [2, 2]
p prime_factors(9) #=> [3, 3]
p prime_factors(12) #=> [2, 2, 3]
p prime_factors(34) #=> [2, 17]