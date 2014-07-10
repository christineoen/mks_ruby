class Cookbook
	attr_accessor :title
	attr_reader :recipes

def initialize(title)
	@title = title
	@recipes = []
end

def add_recipe(recipe)
	@recipes << recipe
	puts "Added recipe to the collection: #{recipe.title}"
end

def recipe_titles
	@recipes.each {|x| puts "#{x.title}"}
end

def recipe_ingredients
	@recipes.each {|x| puts "These are the ingredients for #{x.title}: #{x.ingredients}"}
end

def print_cookbook
	@recipes.each do |x|
		puts "#{x.title}"
		puts "Ingredients: #{x.ingredients.join(", ")}"
		puts "Steps: #{x.steps.join(", ")}"
	end
end

def print_cookbook2
	@recipes.each do |x|
		puts "#{x.title}"
		puts "Ingredients:"
		x.ingredients.each_with_index {|x, index| puts "#{index+1}. #{x}"}
		puts "Steps:"
		x.steps.each_with_index {|x, index| puts "#{index+1}. #{x}"}
	end
end

end

class Recipe
	attr_accessor :title
	attr_accessor :ingredients
	attr_accessor :steps

def initialize(title, ingredients, steps)
	@title = title
	@ingredients = ingredients
	@steps = steps
end

def print_recipe
	puts "#{@title}"
	puts "Ingredients: #{@ingredients.join(", ")}"
	puts "Steps: #{@steps.join(", ")}"
end

def print_recipe2
	puts "#{@title}"
	puts "Ingredients:"
	@ingredients.each_with_index {|x, index| puts "#{index+1}. #{x}"}
	puts "Steps:"
	@steps.each_with_index {|x, index| puts "#{index+1}. #{x}"}
end

end
