class Person

  def initialize(first_name, last_name, age)
      @first_name = first_name
      @last_name = last_name
      @age = age
  end

  def name
    "#{@first_name} #{@last_name}"
  end

  def can_vote?
    @age >= 18
  end

end

human = Person.new("Leigh", "Halliway", 30)

puts human.name

if human.can_vote?
  puts "#{human.name} can vote!"
end