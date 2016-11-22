
class Board

  @@boards_templates = [["POEMA", "CANCION", "RONDAS", "RIMAS"],"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"]
  @@palabras_tablero = ""
  @@arreglo_tablero = []

  def initialize
    complete_board
  end

  def to_s
    palabras = @@palabras_tablero.split("")
    palabras.each_slice(5) do |letra| 
      p letra
      @@arreglo_tablero << letra
    end
  end

  def include?(word)

    word.upcase!
    
    false if word.length > 8

    # lineal
    for i in 
    if @@palabras_tablero[]
    

    end 
  end

  private
  def complete_board
    size = @@boards_templates[1].length
    compara = @@boards_templates[1].split("")

    for i in 0...size
      a_letras = ("A".."Z").to_a
      r = rand(0..25)

      if compara[i] =~ /[^X]/
        @@palabras_tablero << compara[i]
      else
        @@palabras_tablero << a_letras[r]
      end

    end

    @@palabras_tablero 
  end

end

board = Board.new
puts board

p board.include?("poema")

