class Game

  def initialize(player1, pl)
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

  def board(current_board)
    Board.current_board
  end

  def player_1
      Players.player_1
  end
  def player_2
      Players.player_2
  end


  def draw?
    full? && !won? ? true : false
  end

  def over?
    won? || draw? || full? ? true : false
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
