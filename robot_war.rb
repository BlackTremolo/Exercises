arr1 = Array.new(10, 1)
arr2 = Array.new(10, 1)

loop do 
 al_r1 = 0 
 al_r2 = 0 

 i1 = rand(0..9)
 i2 = rand(0..9)

 if arr1[i1] == 1 
    arr1[i1] = 0
    puts "Робот по индексу #{i1} убит"
 else
    puts "Промах"	
 end
 
 arr1.each do |robot|
    if robot == 1
	al_r1 += 1		
    end
 end
 puts "В первой команде осталось #{al_r1} роботов"

 if arr2[i2] == 1 
    arr2[i2] = 0
    puts "Робот по индексу #{i2} убит"
 else
    puts "Промах"	
 end

 arr2.each do |robot|
    if robot == 1
	al_r2 += 1		
    end
 end
 
 puts "Во второй команде осталось #{al_r2} роботов"

 if al_r1 == 0
	puts 'Выиграла вторая команда'
	exit
 elsif al_r2 == 0
	puts 'Выиграла первая команда'
	exit
 end
end