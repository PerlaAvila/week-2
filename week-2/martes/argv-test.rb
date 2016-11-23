$ruby argv.rb
=> Los argumentos recibidos son:
=> []

# $ruby argv.rb un_argumento
=> Los argumentos recibidos son:
=> ["un_argumento"]

$ruby argv.rb argumento_uno argumento_dos
=> Los argumentos recibidos son:
=> ["argumento_uno", "argumento_dos"]

$ruby argv.rb "argumento uno con espacios" "argumento dos con espacios"
=> Los argumentos recibidos son:
=> ["argumento uno con espacios", "argumento dos con espacios"]