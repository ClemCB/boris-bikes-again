require 'docking_station'


describe DockingStation do

    describe 'initalization' do
      it 'has a variable capacity' do
        docking_station = DockingStation.new(50)
        50.times {docking_station.dock Bike.new}
        expect { docking_station.dock Bike.new}.to raise_error "There are already the maximum number of bikes docked - there is no more space!"
      end
    end
    

    # For Joe to worry about this weekend!!
    # it 'should expect initalize to be given an argument', :focus => true do
    #   allow(subject).to receive(:initialize).with(an_instance_of(Object))
    # end

    describe '#initialize default values' do
      it 'should have a default capacity of 20 if no other capacity is set' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
      end
    end

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

  it { is_expected.to respond_to(:bikes) }

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'return docked bikes' do
    array_of_bikes = []
    DockingStation::DEFAULT_CAPACITY.times {array_of_bikes.push(subject.dock Bike.new)}
    expect(subject.bikes).to eq array_of_bikes
  end

  describe '#release_bike' do
    it "docking station raises error when there are no bikes to release" do
      expect { subject.release_bike }.to raise_error("There are no more bikes!")
    end
  end

  describe '#dock' do
    it "raises an error when there is already docked bike" do
      subject.capacity.times {subject.dock Bike.new}
      expect { subject.dock Bike.new }.to raise_error("There are already the maximum number of bikes docked - there is no more space!")
    end
  end

end
