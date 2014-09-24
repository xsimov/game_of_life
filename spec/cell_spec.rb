require_relative '../lib/cell'

describe "a cell" do
  before :each do
    @cell = Cell.new
  end

  it "can be alive" do
    expect(@cell.status).to eq(:alive)
  end

  it "can be dead" do
    @cell.switch_status
    expect(@cell.status).to eq(:dead)
  end

  it "can be resurrected" do
    @cell.switch_status
    @cell.switch_status
    expect(@cell.status).to eq(:alive)
  end
end

describe "the net" do

  before :each do
    @net = Net.new(5,5)
  end

  it "can be created with many dimensions" do
    expect(@net.dimensions).to eq([5,5])
  end

  it "has cells on it" do
    expect(@net.get_cell_on([3,4])).to be_a(Cell)
  end
end

describe "the game" do
  it "has ticks" do
    game = Game.new
    expect(game.tick).to eq(:ok)
  end
end