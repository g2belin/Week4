def print_name(greeting, person)
  puts "#{greeting} #{person[:name]}"
end

print_name("Hello", {name: "Leigh", age: 60})

print_name "Hey", name: "Leigh", age: 60

