# Escribe este proceso en pseudocódigo.

# escribe un método llamado are_anagrams? que reciba dos palabras, sin importar si existen en un diccionario, y devuelva true o false.

# Existe un principio que explica que cada método o clase que escribes debe solamente tener una responsabilidad.
# Puede ser que encuentres dentro de tú método un proceso que podría ser un método independiente ya que otros métodos podrían hacer uso de el.

# A esto se le llama Single responsibility principle, y es un principio más amplio pero servirá en este ejercicio para empezar a comprenderlo. 
# Esto también ayuda con el concepto DRY.

# Intenta escribir un método llamado canonical que reciba una palabra y la regrese en un formato especifico el cual, 
# si comparas dos anagramas después de mandados a este método sean iguales. No sabes que es canonical visita esta página Forma Canónica


def are_anagrams?(word_1, word_2)

  word_1.chars.sort.join == word_2.chars.sort.join

end

p are_anagrams?("amor", "roma")
p are_anagrams?("amor", "perro")

def canonical(word)
  word.chars.sort.join
end

p canonical("perro")

def are_anagrams?(word1, word2)
  canonical(word1) == canonical(word2)
end

p are_anagrams?("cola", "loca")