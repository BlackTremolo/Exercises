number = rand(1..1000000)
puts 'Угадай число от 1 до 1000_000'

loop do
	print 'Введите число: '
	answer = gets.to_i
	
	 answer == number ? puts 'Ты угадал' exit : answer != number puts 'Не угадал'
end

