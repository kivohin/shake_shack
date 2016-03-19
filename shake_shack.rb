# Shake Shack program

class ShackShop
	def initialize
		@milkshakes = []
	end

	def add_milkshake(milkshake)
		@milkshakes.push(milkshake)
	end

	def price_of_all_milkshakes
		total_price_of_all_milkshakes = 0
		
		@milkshakes.each do |milkshake|
			total_price_of_all_milkshakes += milkshake.price_of_milkshake # Used first time << sign to replace += but didn't work!
		end

		puts "\nYour total price for all milkshakes is #{total_price_of_all_milkshakes}€."
	end
end

class MilkShake
	def initialize
		@base_price = 3
		@ingredients = []
	end

	def add_ingredient(ingredient)
		@ingredients.push(ingredient)
	end

	def price_of_milkshake
		#Let's establish what our counter should be before we start adding ingredients into the mix
  		total_price_of_milkshake = @base_price

  		#Add each ingredients price to our total
  		@ingredients.each do |ingredient|
    		total_price_of_milkshake += ingredient.price
    	end

    	#return  our total price to whoever called for it
   		# puts "Price for one milkshake #{total_price_of_milkshake}."

   		total_price_of_milkshake
  	end
end

# milkshake = MilkShake.new("Chocolate", 7)

class Ingredient
	attr_reader :name, :price

	def initialize(name, price)
		@name = name
		@price = price
	end
end

# banana = Ingredient.new("Banana", 2)

banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)

anthonys_milkshake = MilkShake.new
anthonys_milkshake.add_ingredient(banana)
anthonys_milkshake.add_ingredient(chocolate_chips)

deysis_milkshake = MilkShake.new
deysis_milkshake.add_ingredient(banana)

angies_milkshake = MilkShake.new
angies_milkshake.add_ingredient(chocolate_chips)

all_milkshakes = ShackShop.new
all_milkshakes.add_milkshake(anthonys_milkshake)
all_milkshakes.add_milkshake(deysis_milkshake)
all_milkshakes.add_milkshake(angies_milkshake)

puts all_milkshakes.price_of_all_milkshakes

