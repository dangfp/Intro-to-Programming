def greeting(name, options = {})
	if options.empty?
		puts "Hi, my name is #{name}"
	else
		puts "Hi, my name is #{name} and i'm #{options[:age]} years old and i live in #{options[:city]}."
	end
end

greeting("Bob")
greeting("Bob", { age: '16', city: "New York City" })
greeting("Bob", age: '16', city: "New York City")