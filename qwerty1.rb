number = rand(1..1000000)
puts 'Угадай число от 1 до 1000_000'
loop do
	print 'Введите число: '
	answer = gets.to_i
	
	if answer == number
		puts 'Ты угадал'
		exit
	elsif answer != number && answer > number
		puts 'Не угадал, искомое число меньше ответа'
	else 
		puts 'Не угадал, искомое число больше ответа' 
	end
end
