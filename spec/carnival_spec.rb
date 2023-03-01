require 'rspec'
require './lib/visitor'
require './lib/ride'
require './lib/carnival'

RSpec.describe Carnival do
  before(:each) do
    @carnival = Carnival.new("The Big Carnival", "3 weeks")
    @ride1 = Ride.new({name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle})
    @ride2 = Ride.new({ name: 'Ferris Wheel', min_height: 36, admission_fee: 5, excitement: :gentle })
    @ride3 = Ride.new({ name: 'Roller Coaster', min_height: 54, admission_fee: 2, excitement: :thrilling })
  end

  it 'exists and has a name and duration' do
    expect(@carnival).to be_a(Carnival)
    expect(@carnival.name).to eq("The Big Carnival")
    expect(@carnival.duration).to eq("3 weeks")
  end

  it 'starts with no rides' do
    expect(@carnival.rides).to eq([])
  end

  it 'can add rides to rides array' do
    @carnival.add_ride(@ride1)

    expect(@carnival.rides).to eq([@ride1])

    @carnival.add_ride(@ride2)
    @carnival.add_ride(@ride3)
    
    expect(@carnival.rides).to eq([@ride1, @ride2, @ride3])
  end
end
#### 1) Each carnival has a duration, as well as a way to read that data
#### 2) Each carnival has rides and can list those rides.
#### 3) At LEAST ONE of the following:
### A carnival can tell us its most popular ride.
### A carnival can tell us its most profitable ride
### A carnival can calculate the total revenue earned from all its rides.
