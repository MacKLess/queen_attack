require('rspec')
require('queen_attack')

describe('#queen_attack?') do
  it("returns false if the coordinates are not horizontally, vertically, or diagonally in line with each other") do
    expect([1,1].queen_attack?([2,3])).to(eq(false))
  end

  it("returns true if the coordinates are horizontally in line with each other") do
    expect([4,1].queen_attack?([6,1])).to(eq(true))
  end

  it("returns true if the coordinates are vertically in line with each other") do
    expect([4,1].queen_attack?([4,6])).to(eq(true))
  end

  it("returns true if the coordinates are diagonally in line with each other") do
    expect([2,2].queen_attack?([3,1])).to(eq(true))
    expect([2,2].queen_attack?([1,1])).to(eq(true))
    expect([2,2].queen_attack?([3,3])).to(eq(true))
    expect([2,2].queen_attack?([1,3])).to(eq(true))
  end
end
