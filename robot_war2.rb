@arr1 = Array.new(10, 100)
@arr2 = Array.new(10, 100)

#Methods

def attack arr
   sleep 1
   i = rand(0..9)
   if arr[i] <= 0
	arr[i] = 0
	puts "Робот с индексом #{i} убит"

   elsif arr[i] > 0 
	damage = rand(30..100)
        arr[i] = arr[i] - damage
	puts "Робот с индексом #{i} получил #{damage} урона" 
   end	
 
   if arr[i] == 0 
	puts "Промах по индексу #{i}"
   end

   sleep 1
end

def stats
   @cnt1 = @arr1.count {|x| x > 0}
   @cnt2 = @arr2.count {|x| x > 0}
   
   puts "1-я команда: #{@cnt1} роботов в строю\n#{@arr1}"
   puts '-' * 80
   puts "2-я команда: #{@cnt2} роботов в строю\n#{@arr2}"
end

def victory? 
    if @cnt1 == 0
	puts "Вторая команда выиграла, в команде осталось #{@cnt2}"
	return true

    elsif @cnt2 == 0	
    	puts "Первая команда выиграла, в команде осталось #{@cnt1}"
	return true
    else
	false
    end	
end

#Program
loop do
puts 'Атакует первая команда'
attack @arr2

stats

exit if victory?

sleep 2
puts '=' * 80

puts 'Атакует вторая команда'
attack @arr1

stats

exit if victory?

sleep 2  
puts '=' * 80

end