array = [["POEMA", "CANCION", "RONDAS", "RIMAS"],"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"]

var = array.drop 1

array_new = Array.new

var_2 = var.join("").chars

8.times do 
array_new << var_2.pop(5)
end

board = array_new.reverse

board.each{|row| print "#{row.join(' | ')}\n"}