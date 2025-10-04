@human = 10
@machine = 10

def check_victory?
	if @human <= 0
		puts 'Машины победили!!!'
		exit
	elsif @machine <= 0
		puts 'Люди победили!!!'	
		exit
	end
end

def event1 p
   	puts "Запущена ракета по городу #{p}"
	random_sleep
	boom
end

def event2 p 
	puts "Применино радиоактивное оружие по городу #{p}"
	random_sleep
	boom
end

def event3 p
	puts "Группа солдат прорывает оборону противника в городе #{p}"
	random_sleep
	boom
end	

def random_sleep
   sleep rand(0.3..1.5)
end

def random_city
   	dice = rand(1..5)
	if dice == 1
		'Москва'
	elsif dice == 2
		'Нью-Йорк'
	elsif dice == 3
		'Пекин'
	elsif dice == 4
		'Лондон'
	else 
		'Сеул'
	end
end		

def luck?
	rand(1..2) == 1
end

def boom
	diff = rand(1..5)
	if luck?
		@human -= diff
		puts "Погибло #{diff} людей"
	else
		@machine -= diff 
		puts "Погибло #{diff} машин"
	end
end

def stats
   	puts "Осталось людей: #{@human}, Осталось машин: #{@machine}"
end


loop do
	if check_victory?
		exit
	end
	
dice = rand(1..3)

if dice == 1
	event1 random_city
elsif dice == 2
	event2 random_city
elsif dice == 3
	event3 random_city
end

stats
random_sleep

puts '=' * 80

end