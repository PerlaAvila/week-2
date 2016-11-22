# Para este ejercicio tendrás que crear de nuevo dos métodos que reciban un integer positivo n y regresen el el nth fibonacci number, 

# un método iterativo y un método recursivo.

# Deberás comparar la eficiencia, pros y contras de las dos implementaciones.

require 'benchmark'
time = Benchmark.measure do 

  def fibonacci_iterative(number) 

    if number == 0
      return 0
    end
    if number == 1
      return 1
    end

    if number >= 2
      return (fibonacci_iterative(number-1) + fibonacci_iterative(number-2))
    end
  end

# Driver Code:
p fibonacci_iterative(0) == 0
p fibonacci_iterative(1) == 1
p fibonacci_iterative(9) == 1
p fibonacci_iterative(3) == 2
p fibonacci_iterative(4) == 3
p fibonacci_iterative(5) == 5

end
puts time #== 0.000000   0.000000   0.000000 (  0.000096)

require 'benchmark'
time = Benchmark.measure do 

  def fibonacci_recursive(number)
    (0..number).inject([1,0]) { |(a,b), _| [b, a+b] }[0]
  end

p fibonacci_recursive(0) == 0
p fibonacci_recursive(1) == 1
p fibonacci_recursive(2) == 1
p fibonacci_recursive(3) == 2
p fibonacci_recursive(4) == 3
p fibonacci_recursive(5) == 5

end
puts time #== 0.000000   0.000000   0.000000 (  0.000076)
