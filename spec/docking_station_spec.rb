require 'docking_station'


describe DockingStation do

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike). to eq bike
      end
    end

  it "returns a new instance of Bike.new" do
    #bike = subject.release_bike
    bike = Bike.new
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike) }

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'return docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  describe '#release_bike' do
    it "docking station raises error when there are no bikes to release" do
      expect { subject.release_bike }.to raise_error("There are no more bikes!")
    end
  end

  describe '#dock' do
    it "raises an error when there is already docked bike" do
      bike_one = Bike.new
      subject.dock(bike_one)
      bike_two = Bike.new
      expect { subject.dock(bike_two) }.to raise_error("There is already docked bike!")
    end
  end

end
