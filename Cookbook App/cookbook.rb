class Cookbook
	attr_accessor :title
	attr_reader :recipes

	def initialize(title)
		@title = title
		@recipes = []
	end
	def add_recipe(recipe)
		@recipes << recipe
		puts "Added recipe to the recipe collection: #{recipe.title}"
	end
	def recipe_titles
		@recipes.each {|x| puts x.title}
	end
	def recipe_ingredients
		@recipes.each {|x| puts "These are the ingredients for #{x.title} : #{x.ingredients}"}
	end
	def print_cookbook
        @recipes.each do |x|
            x.print_recipe
        end
    end
end

class Recipe
	attr_accessor :title
	attr_accessor :ingredients
	attr_accessor :steps

	def initialize(title,ingredients,steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end
	def print_recipe
		puts @title
		puts "Ingredients: " + @ingredients.join(", ")
		puts "Steps:"
		n = 0
		while n < @steps.length
			puts "#{n+1}. " + @steps[n]
			n+=1
		end
	end
end
