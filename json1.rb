@online_bank = [{client: 'Герман Оскорович Блокчейн'}, 
		{balance: 123.45}, 
		{transaction_list: 
		[{item: 'Сапоги', type: 'расход', sum: 40},
		{item: 'Зарплата', type: 'приход', sum: 1000},
		{item: 'Продажа ваучера', type: 'приход',sum: 300},
		{item: 'Велосипед', type:'расход', sum: 200},
		{item: 'Протез для ноги бабушки', type: 'расход', sum: 300}]},
		{visibility_fiter: [:show_plus, :no_show_plus]}]

#Methods
def transaction_filter	filter

		if filter == '+'
			filter = @online_bank[3][:visibility_fiter][0]
		elsif filter == '-'
			filter = @online_bank[3][:visibility_fiter][1]
		end
		
		if filter == @online_bank[3][:visibility_fiter][0]
		
			@online_bank[2][:transaction_list].each_index do |i|
			puts "Описание: #{@online_bank[2][:transaction_list][i][:item]}, Тип: #{@online_bank[2][:transaction_list][i][:type]}, Сумма: #{@online_bank[2][:transaction_list][i][:sum]}"
	       		end
		elsif filter == @online_bank[3][:visibility_fiter][1]
			online_bank1 = @online_bank[2][:transaction_list].select {|el| el[:type]== 'расход' }

			online_bank1.each_index do |i|
			puts "Описание: #{online_bank1[i][:item]}, Тип: #{online_bank1[i][:type]}, Сумма: #{online_bank1[i][:sum]} "
			end						
		end
end

#Action
	
puts "Отображать пополнение?(+/-)"
filter = gets.chomp


puts "Клиент: #{@online_bank[0][:client]}"     #  отображать пополнение #{}"
puts "Баланс: #{@online_bank[1][:balance]}"

transaction_filter filter