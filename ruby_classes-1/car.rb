class Car
	def initialize
		@fuel = 10
		@distance = 0
		puts "the initialize method is running automatically"
	end

	def get_info
		"I'm a car and I've driven #{@distance} miles and have #{@fuel} gallons left!"
	end

	def drive(miles_driven)
		@distance += miles_driven
		if @distance >= 200
			puts "You're out of gas!"
			@fuel = 0
			@distance = 200
		else
			@fuel -= (miles_driven*0.05)
		end
	end

	def fuel_up
		new_fuel = 10 - @fuel
		@fuel += new_fuel
		fuel_cost = new_fuel * 3.5
		puts "You put #{new_fuel} gallons in your car and it will cost #{fuel_cost}."
	end
end