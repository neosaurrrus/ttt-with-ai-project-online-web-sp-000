class Game
  attr_accessor :board, :player_1, :player_2
  def initialize(p1 = Players::Human.new("X"), p2 = Players::Human.new("O"), board = Board.new)
    @player_1 = p1
    @player_2 = p2
    @board = board
  end

  def board
    @board
  end

  WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]

  def current_player

  end


  def draw?
    full? && !won? ? true : false
  end

  def over?
    @board.won? || @board.draw? || @board.full? ? true : false
  end

  def winner
    won? ? @board[won?[0]] : nil
  end

  def play
  until over?
    turn
  end
  if won?
    puts "Congratulations #{winner}!"
  elsif draw?
    puts "Cat's Game!"
  end
end



end #of class
