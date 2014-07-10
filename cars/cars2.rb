class Car
	@@total_car_count = 0 #class variable
	@@cars_per_color = Hash.new

	def self.total_car_count #class method showing total cars
		@@total_car_count
	end

	def self.cars_per_color
		@@cars_per_color
	end

	def self.most_popular_color
		@@cars_per_color.max_by {|color, value| value }[0]
	end

	def to_s()
		"I'm a car! I've driven #{@distance} and have #{@fuel} gallons gas left"
	end

	def initialize(color='blue')
		@fuel = 10
		@distance = 0
		@color = color
		@@total_car_count += 1
		if @@cars_per_color.has_key?(color)
			@@cars_per_color[color] += 1
		else
			@@cars_per_color[color] = 1
		end
	end

	def change_color(color)
		@@cars_per_color[@color] -= 1
		@color = color
		if @@cars_per_color.has_key?(color)
			@@cars_per_color[color] += 1
		else
			@@cars_per_color[color] = 1
		end
	end

	def drive(miles)
		if (@fuel - miles/20.0) >= 0
			@distance += miles
			@fuel -= miles/20.0
		else
			@distance += @fuel * 20.0
			@fuel = 0
			puts "You're out of gas!"
		end
	end

	def fuel_up()
		gallons_needed = 10.0 - @fuel
		puts "You must pay $#{3.5 * gallons_needed}"
		@fuel = 10.0
	end
end

car_a = Car.new("red")
car_b = Car.new("blue")
car_c = Car.new("white")
puts car_a
puts car_b
car_a.drive(10)
puts car_a
puts car_b
car_a.drive(232)
car_b.drive(117)
puts car_a
puts car_b

puts Car.total_car_count
c1 = Car.new("red")
puts Car.total_car_count
c2 = Car.new("green")
puts Car.total_car_count

Car.cars_per_color

best_color = Car.most_popular_color
puts "The best color: "
puts best_color
p best_color
c3 = Car.new(best_color)
Car.cars_per_color

c1.change_color("orange")
c2.change_color("orange")




