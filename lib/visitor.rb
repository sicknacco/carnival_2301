class Visitor
  attr_reader :name,
              :height,
              :spending_money,
              :preferences

  def initialize(name, height, spending_money, preferences = [])
    @name = name
    @height = height
    @spending_money = spending_money.delete(spending_money[0]).to_i
    @preferences = []
  end

  def add_preference(preference)
    @preferences << preference
  end

  def tall_enough?(height)
    @height >= height
  end
end
