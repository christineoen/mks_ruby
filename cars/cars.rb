class Car
	@@total_car_count = 0 #class variable
	@@cars_per_color = Hash.new

	def self.total_car_count #method that belongs to the class, not the instance
		@@total_car_count
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

	def change_color(new_color)
		@new_color = new_color
		@@cars_per_color[@color] -= 1
		if @@cars_per_color.has_key?(new_color)
			@@cars_per_color[new_color] += 1
		else
			@@cars_per_color[new_color] = 1
		end
	end

	def self.most_popular_color
		max_quantity = @@cars_per_color.values.max
		puts @@cars_per_color.select {|key, value| value == max_quantity}.keys
	end
end

class ConvertibleCar < Car
	attr_accessor :roof_status

	def initialize(color='blue', convertible='true')
		super(color)
		@convertible = convertible
		@roof_status = 'closed'
	end

	def top_down
		@roof_status = 'open'
	end

	def close_top
		@roof_status = 'closed'
	end

end

car_a = Car.new('blue')
car_b = Car.new('blue')
car_c = ConvertibleCar.new('blue')
car_d = ConvertibleCar.new('red')
puts car_a
puts car_b
car_a.drive(10)
puts car_a
puts car_b
car_a.drive(232)
car_b.drive(117)
puts car_a
puts car_b
Car.most_popular_color
car_b.change_color('pink')
car_c.change_color('pink')
Car.most_popular_color
best_color = Car.most_popular_color
car_e = Car.new(best_color)

car_a.close_top
car_b.close_top
car_a.top_down
car_b.top_down
car_d.close_top
car_d.top_down



