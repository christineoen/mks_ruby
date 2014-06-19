class Person
	attr_accessor :name
	attr_accessor :caffeine_level

	def initialize(name, caffeine_level=0)
		@name = name
		@caffeine_level = caffeine_level
		puts "#{name} is a person with a caffeine level of #{caffeine_level}."
	end

	def run
		puts "#{@name} runs away."
	end

	def scream
		puts "#{@name} screams."
	end

	def drink_coffee(amount)
		@amount = amount
		@caffeine_level += amount
		puts "#{@name} drinks coffee and has a caffeine level of #{@caffeine_level}."
	end

	def status
		puts "#{name} has a caffeine_level of #{caffeine_level}."
	end

end

class PowerRanger2 < Person

	attr_accessor :strength
	attr_accessor :color

	def initialize(name, caffeine_level=0, strength, color)
		@name = name
		@caffeine_level = caffeine_level
		@strength = strength
		@color = color
		puts "#{name} is a #{color} Power Ranger with a strength of #{strength}."
	end

	def punch(person, strength)
		@caffeine_level -= 1
		if strength > 5
			puts "#{person.name} gets punched by #{@name} and somersaults into the air."
			person.caffeine_level -= 1
		else
			person.scream
		end
		@strength -= strength
	end

	def rest(time)
		@time = time
		@strength += time
		puts "#{@name} rests for #{time} hours which increases strength to #{@strength}."
	end

end

class EvilNinjaDog < Person

	attr_accessor :strength
	attr_accessor :evilness

	def initialize(name, caffeine_level=0, strength, evilness)
		@name = name
		@caffeine_level = caffeine_level
		@strength = strength
		@evilness = evilness
		puts "#{name} is an Evil Ninja Dog with a strength of #{strength} and an evilness of #{evilness}."
	end

	def punch(person, strength)
		@caffeine_level -= 1
		if strength > 5
			puts "#{person.name} gets karate chopped by #{@name} and collapses to the ground."
			person.caffeine_level -= 1
		else
			person.scream
		end
		@strength -= strength
	end

	def cause_mayhem(person)
		person.caffeine_level = 0
		@strength -= 5
		puts "#{@name} causes mayhem and depletes #{person.name}'s caffeine level to zero."
	end

end

me = Person.new("Chris")
me.drink_coffee(2)

ranger = PowerRanger2.new("Erin", 5, 10, "blue")
ranger.punch(me, 6)
ranger.punch(me, 2)

ninja = EvilNinjaDog.new("Whiskey", 8, 20)
ninja.punch(ranger,6)
ninja.cause_mayhem(me)

ranger.rest(3)

