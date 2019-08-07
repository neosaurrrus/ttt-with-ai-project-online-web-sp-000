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
          chosen_move = 5
      #if its the 2nd move (opponent starting)
        elsif board.turn_count == 1
          if board.valid_move?(5)
            chosen_move = 5
          elsif board.valid_move?(1)
            chosen_move =  1
          else
            chosen_move = 3
          end

        elsif board.turn_count > 1
            # check for near win conditions (self)
          my_win_conditions
          if !my_win_conditions
            # check for near win conditions (opponent)
            thier_win_conditions
          if !thier_win_conditions
              # evaluate win condition to persue
            pick_my_win_condition
          end
       end # of big logic
    end

    def my_win_conditions

    end








  end #of class
end # of module
