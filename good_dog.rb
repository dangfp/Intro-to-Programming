class GoodDog
	attr_accessor :name
	def initialize(name)
		@name = name
		# puts "This object was initialized."
	end

	def speak
		"#{@name} says arlf!"
	end
end

sparky = GoodDog.new("Tom")
puts sparky.name
puts sparky.speak