class Dog

  attr_reader :name, :breed, :age

  def initialize(name, breed, age)
    @name=name
    @breed=breed
    @age=age
  end

  def price
    if @breed =="husky"
      return 1000
    elsif @breed =="chihuaha"
      return 200
    else
      return 100
    end
  end

  def can_breed?(other_dog)
    @breed==other_dog.breed
  end

end

lassie=Dog.new("Lassie","Collie",15)
huskers=Dog.new("Huskers","husky",10)

puts "#{lassie.name} costs #{lassie.price} dollars."


if lassie.can_breed?(huskers)
  puts "#{lassie.name} can breed with #{huskers.name}"
else
  puts "#{lassie.name} cannot breed with #{huskers.name}"
end

