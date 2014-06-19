class Pet
 	def speak(sound)
 		Kernel.puts("The dog says #{sound}")
 	end
 	def description(breed,color)
 		Kernel.puts("I am a #{color} #{breed}")
 	end
 	def hungry(food)
 		Kernel.puts("I am hungry for #{food}")
 	end
end

class Weather
	def rain(quantity)
		@quantity = quantity
 		puts "It is raining #{@quantity}."
 	end
 	def temperature(degree)
 		@degree = degree
 		puts "It is #{@degree} degrees outside."
 	end
 	def weather_report
 		puts "It is #{@degree} degrees and it is raining #{@quantity}!"
 	end
end

class Marker
	def set_color(my_color)
		@color = my_color
	end

	def write
		Kernel.puts("I am writing with a #{@color} marker!")
	end
end

5.send(:*,5)
"omg".send(:upcase)
['a','b','c'].send(:at,1)
['a','b','c'].send(:insert,2,'o','h','n','o')
{}.send(:size)
{character: "Mario"}.send(:has_key?,:character)

6 - 32
{html: true, json: false}.keys
"MakerSquare" * 6
"MakerSquare".split('a')
['alpha','beta'][3]
