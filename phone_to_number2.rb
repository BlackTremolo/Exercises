def find_number_by_simbol simbol
	arr = [              
	[],
	[],
	%w(A B C),
	%w(D E F),
	%w(G H I),
	%w(J K L),
	%w(M N O),
	%w(P Q R S),
	%w(T U V),
	%w(W X Y Z)]

	arr.each.with_index do |sandbar, i|
		sandbar.each do |sandbar_simbol|
			return i if sandbar_simbol == simbol	
		end
	end
	simbol
end

def phone_to_number phone
   	phone.each_char do |simbol|
		print find_number_by_simbol simbol
	end 
end

print 'Введите телефон:'
phone = gets.chomp.upcase

phone_to_number phone