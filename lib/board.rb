def Board
  attr_accessor :cells

  def initialize
    @cells = [" "," "," "," "," "," "," "," "," "]

  end

  def reset!
    @cells = [" "," "," "," "," "," "," "," "," "]
  end



  def display
    @cells
  end



  def position

  end

  def full?

  end

  def turn_count

  end

  def taken?

  end

  def valid_move?

  end

  def update

  end


end #of class
