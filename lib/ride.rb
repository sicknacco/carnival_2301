class Ride
  attr_reader :name,
              :min_height,
              :admission_fee,
              :excitement,
              :total_revenue,
              :rider_log

  def initialize(hash)
    @name = hash[:name]
    @min_height = hash[:min_height]
    @admission_fee = hash[:admission_fee]
    @excitement = hash[:excitement]
    @total_revenue = 0
    @rider_log = {}
  end
# I tried everything I could think of. A lot more than what is shown.
# Went really well until here. 1.5 hours+ spent on this
# Tried using ride in various ways as well. 
  def board_rider(rider)
    @rider_log = {:rider => 0}
    if rider.tall_enough?(@min_height) && rider.preferences.include?(@excitement)
      rider_log[:rider] =+ 1
      # @rider_log = rider_log[:rider] += 1
      # @rider_log "#{rider}" += 1
    end
    # @rider_log
  end
end
