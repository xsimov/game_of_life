class Cell
  def status
    @status ||= :alive
  end

  def switch_status
    @status = (@status == :dead) ? :alive : :dead
  end
end

class Net
  def initialize width, heigth
    @dimensions = [width, heigth]
    @net = []
    row = []
    width.times do
      heigth.times do
        row << Cell.new
      end
      @net << row
    end
  end

  def dimensions
    @dimensions
  end

  def get_cell_on position
    @net[position.first][position.last]
  end
end

class Game
  def tick
    :ok
  end
end