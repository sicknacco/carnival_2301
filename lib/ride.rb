class Ride
  attr_reader :name,
              :min_height,
              :admission_fee,
              :excitement,
              :rider_log,
              :total_revenue

  def initialize(ride_data)
    @name = ride_data[:name]
    @min_height = ride_data[:min_height]
    @admission_fee = ride_data[:admission_fee]
    @excitement = ride_data[:excitement]
    @rider_log = Hash.new(0)
    @total_revenue = 0
  end

  def board_rider(visitor)
    if visitor.tall_enough?(@min_height) && visitor.preferences.include?(@excitement)
    visitor.spending_money -= @admission_fee
      @rider_log[visitor] += 1
      @total_revenue += @admission_fee
    end
  end
end
##make sure
  #visitor has excitement preference
  #they are tall_enough?(@min_height)
## log the visitor by adding to the rider log
## tally count of how many times a visitor has boarded THIS ride
## add visitor to rider_log as a key
  ## if rider_log[visitor] exists
    ## increment += 1
    ## else
    ## rider_log[visitor] = 1 ## This is for when they ride the first time!
## increase the value of total_revenue using @admission fee
## decrement the visitor's spending money
