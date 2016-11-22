# Escribe un método llamado linear_search que tome como argumento un número y un arreglo. 

# Este método debe regresar el índice del primer elemento que sea igual al valor del número, 
# revisando dentro del arreglo cada valor secuencialmente. 

# En caso de no encontrar el número debe regresar nil.

# No podrás utilizar métodos de Array ni sus enumerables (each, map, etc ), 
# si no que debes de utilizar iteradores como for while o until. 

# El único método que puedes utilizar es: Array#[]

def linear_search(number, random_numbers)

 i = 0
 while i < random_numbers.length
  if random_numbers[i] == number
    return i
  else
    nil
  end
  i += 1
 end
end

random_numbers = [ 4, 3, 2, 20, 5, 64, 78, 11, 43 ]
p linear_search(20, random_numbers)
# # # => 3
p linear_search(29, random_numbers)
# #=> nil

# Después deberás crear un método que regrese un array con los indices donde encuentre el objeto y un array vació si no existe,
# llama este método global_linear_search.

def global_linear_search(objeto, arr)
 new_arr = []
 i = 0
 while i < arr.length
   if arr[i] == objeto
     new_arr << i 
   end
   i += 1
 end
 new_arr
end   

arr = "entretenerse".split('')

p global_linear_search("e", arr)
# => [0, 4, 6, 8, 11]
