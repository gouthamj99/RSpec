require "spec_helper"
require "zombie"

describe Zombie do
  it "is named Ash" do
    zombie = Zombie.new
    expect(zombie.name).to eq('Ash')
  end

  it "has no brains" do
    zombie = Zombie.new
    expect(zombie.brains).to be < 1
  end

  it "is not hungry" do
    zombie = Zombie.new
    expect(zombie).not_to be_hungry
  end

  it "is eating people" do
    pending("dev in progress")
    fail
  end
end
