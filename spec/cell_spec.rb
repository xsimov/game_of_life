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