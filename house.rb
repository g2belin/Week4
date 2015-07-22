class Buyer

  attr_reader :name

  def initialize(name,salary)
    @name=name
    @salary=salary
  end

  def can_buy?(house)
    @salary>= (house.price/10)
  end

end

class House
  attr_reader :price

  def initialize(price, square_feet)
    @price = price
    @square_feet = square_feet
  end

end

joe = Buyer.new("Joe",390000)

houses = [House.new(2000000,600),
          House.new(7000000,1400),
          House.new(10000000,2000)
          ]

houses.each do |house|
  if joe.can_buy?(house)
    puts "#{joe.name} can afford #{house.price}"
  else
    puts "#{joe.name} needs more money"
  end
end


