class Carnival
  attr_reader :name,
            :duration,
            :rides

  def initialize(name, duration)
    @name = name
    @duration = duration
    @rides = []
  end

  def add_ride(ride)
    @rides << ride
  end

  def most_popular
    @rides.max_by do |ride|
      ride.rider_log.values
    end
  end

  def most_profitable
    @rides.max_by do |ride|
      ride.total_revenue
    end
  end

  def total_revenue
    revenue = []
    @rides.each do |ride|
      revenue << ride.total_revenue
    end
    revenue.sum
    #sum the totals from each rides total revs 
  end
end
