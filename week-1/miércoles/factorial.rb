# En este ejercicio implementaremos dos métodos para Factorial,

# un factorial_iterative el cual debe de resolver el factorial sin utilizar la función recursiva

# luego un factorial_recursive. Regresa a las formulas del factorial para que te des una idea de como resolverlo.

# Intenta usar tu función recursiva con números cada vez más grandes y mira que pasa y trata de comprender porque pasa.

def factorial_iterative(number)
  if number == 0
    1
  else
    number * factorial_iterative(number-1)
  end
end

def factorial_recursive(number)
 (1..number).inject(:*) 
end

p factorial_iterative(5) == 120 
p factorial_iterative(50) == 30414093201713378043612608166064768844377641568960512000000000000

p factorial_recursive(5) == 120 
p factorial_recursive(50) == 30414093201713378043612608166064768844377641568960512000000000000