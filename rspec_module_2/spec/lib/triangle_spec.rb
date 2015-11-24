require "spec_helper"
require "triangle"

describe Triangle do
  it "is an equilateral triangle" do
    triangle = Triangle.new(2,2,2)
    expect(triangle.type).to eq(:equilateral)
  end
  it "is an isoceles triangle" do
    triangle = Triangle.new(3,3,4)
    expect(triangle.type).to eq(:isoceles)
  end
  it "is a scalene triangle" do
    triangle = Triangle.new(2,3,4)
    expect(triangle.type).to eq(:scalene)
  end
  it "is an invalid triangle" do
    triangle = Triangle.new(2,3,6)
    expect(triangle.type).to eq(:invalid)
  end
end
