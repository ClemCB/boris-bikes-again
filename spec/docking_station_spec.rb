require 'docking_station'


describe DockingStation do

  it "responds to release_bike" do
    expect(subject).to respond_to :release_bike
  end

  it "returns a new instance of Bike.new" do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

#  it "docks a bike at docking station" do
#    expect(subject).to respond_to :dock_bike
#  end

  #it "returns true if bike is docked" do
  #  taken = subject.dock_bike
  #  expect(taken).to be_is_dock_taken
  #end
  describe "have_bike" do
    it "expects false return from docking station", focus: true do
      expect(subject.have_bike).to eq false
    end
  end


end
