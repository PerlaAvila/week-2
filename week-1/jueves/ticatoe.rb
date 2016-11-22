def tic_a_toe
gato = %w(X X X X X  O O O O).shuffle
board = [[],[], [], [], []]
space = "––––––––––"
  board.each_with_index do |array, index|
  case index
    when 0
      board[0] << gato.pop(3)
    when 1
      board[1] << space
    when 2
      board[2] << gato.pop(3)
    when 3
      board[3] << space
    when 4
      board[4] << gato.pop(3)
    end
end #do
board.each{|row| print "#{row.join(' | ')}\n"}
end

tic_a_toe