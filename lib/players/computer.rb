module Players
  class Computer < Player




    def move(board)
      valid_moves = []
      input = 1
      board.cells.each do
        if board.valid_move?(input)
          valid_moves << input.to_s
        end
        input+=1
      end
      determine_move(valid_moves)
    end # of move

    def determine_move(valid_moves)
      chosen_move = rand(valid_moves.length)
      #if its the first move
        if board.turn_count == 0
          return 5
      #if its the 2nd move (opponent starting)
        elsif board.turn_count == 1
          if board.valid_move?(4)
            return 5
          elsif board.valid_move?(1)
            return 1
          else
            return 3
          end
          # check for near win conditions (self)
        elsif board.turn_count > 1
          my_win_conditions
          if !my_win_conditions
            thier_win_conditions
          end

       end # of big logic




      # check for near win conditions (opponent)

      # evaluate win condition to persue



  end #of class
end # of module
