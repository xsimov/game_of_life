require_relative '../lib/net'

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
