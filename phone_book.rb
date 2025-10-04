arr = []

loop do
  puts 'Введите имя и телефон человека'
  entry = gets.chomp

  break if entry.empty?

  arr << entry
  puts 'Ваша записная книжка:'
  arr.each do |element|
  	puts element
  end 
end