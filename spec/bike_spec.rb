require 'bike'
describe Bike do
  it "responds to working?" do

    expect(subject).to respond_to :working?

end

  it "returns false when bike is broken" do
    bike = Bike.new(false)
    expect(bike.working?).to eq false
  end

  it "returns true when bike is working" do
    bike = Bike.new(true)
    expect(bike.working?).to eq true
  end

end
