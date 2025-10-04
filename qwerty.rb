print 'У вас есть высшее образование:(y/n) '
ed = gets.chomp 

print 'У вас есть опыт работы программистом:(y/n) '
ex = gets.chomp

print 'У вас более 3х лет опыта:(y/n) '
y = gets.chomp

score = 0

if ed == 'y'
	 score = score + 1
end

if ex == 'y'
	 score = score + 1
end

if y == 'y'
	 score = score + 1
end

if score >= 2 
	puts 'Добро пожаловать в США'
end