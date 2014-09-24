module Swimable
	def swimable
		puts "This vehicle can swimable."
	end
end

class Vehicle
	@@created_objects_number = 0
	attr_accessor :color
	attr_reader :year, :model

	def initialize(year, color, model)
		@year = year
		@color = color
		@model = model
		@current_speed = 0
		@@created_objects_number += 1
	end
	
	def speed_up(number)
		@current_speed += number
		puts "You push the gas and accelerate #{number} mph."
	end

	def brake(number)
		@current_speed -= number
		puts "You push the brake and decelerate #{number} mph."
	end

	def shut
		@current_speed = 0
		puts "Let's park this bad boy!"
	end

	def current_speed
		puts "You are now going #{@current_speed} mph."
	end

	def spray_paint(color)
    self.color = color
    puts "You new #{color} paint job looks great!"
  end

  def self.created_objects_number
  	@@created_objects_number
  end

end

class MyCar < Vehicle
	include Swimable

	TYPE = 'Car'

  def self.gas_mileage(gallons, miles)
  	"#{miles / gallons} miles per gallon of gas."
  end

  def to_s
  	"My car is #{self.year},#{self.color},#{self.model}."
  end
end

class  MyTruck < Vehicle
	 TYPE = 'Truck'
end

puts Vehicle.created_objects_number
car = MyCar.new(1, "red", "BMW_3")
puts Vehicle.created_objects_number
puts MyCar.ancestors
car.swimable
car.current_speed
car.speed_up(100)
car.current_speed
car.brake(10)
car.current_speed
car.shut
car.current_speed
puts car.color = "yellow"
puts car.year
puts car.model
car.spray_paint("blue")
puts MyCar.gas_mileage(1,100)
puts car

truck = MyTruck.new(2, "yellow", "volovo_1")
puts Vehicle.created_objects_number
puts MyTruck.ancestors
