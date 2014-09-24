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
