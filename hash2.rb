@cart = [
{ type: :soccer_ball, qty: 2 },
{ type: :tennis_ball, qty: 3 }
]

@inventory = {
soccer_ball: { available: 2, price_per_item: 100 },
tennis_ball: { available: 1, price_per_item: 30 },
golf_ball: { available: 5, price_per_item: 5 }
}

#Methods

def check item, how_need
	how_many = @inventory[item][:available]	
	
	if how_many > 0 && how_many >= how_need
		puts "Товар #{item} в наличии в нужном количестве"
		@total_item = [item, how_need]  					

	elsif how_many > 0 && how_many < how_need
		@total_item1 = how_many		
		puts "Товара #{item} в нужном количестве в наличии нет, доступно #{@total_item1}"
		@total_item = [item, @total_item1]
	
	elsif how_many == 0 
		puts "Товара #{item} нет в наличии"
		@total_item = [item, 0]
	end
end

def item_sum available
   	sum = available[1] * @inventory[available[0]][:price_per_item]
end

#Action
total_sum = 0

@cart.size.times do |i|
	check @cart[i][:type], @cart[i][:qty]

	total_sum += item_sum @total_item
end

puts "Общая суммв заказа: #{total_sum}"