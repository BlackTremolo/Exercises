def gen_num 
	20.times do	 			  	 
	  sleep rand(0.7..1.2)
	  return print "#{rand(0..5)}"
	end
end
print 'Ведите ваш возраст: '
age = gets.to_i

if age < 18
	puts 'Вам ещё рано'
	exit
end

puts 'Начинаем игру'

balance = 20
puts "Баланс: #{balance}"

loop do

  puts 'Нажмите Enter для старта'
  gets
  
  puts "На табло"
  print	x = gen_num
  print	y = gen_num
  print	z = gen_num

    	  if x == 0 && y == 0 && z == 0
		balance = 0
	  elsif x == 1 && y == 1 && z == 1
		balance += 10
	  elsif x == 2 && y == 2 && z == 2
		balance += 20
	  else
		balance -= 0.5
	  end
  puts "\nБаланс: #{balance}"

  if balance <= 0
	exit
  end	
end