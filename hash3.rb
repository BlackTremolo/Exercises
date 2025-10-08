@contacts = {
	Lena: {email: 'kel@.com', phone: 89025690085, work_phone: 890123123},
	Mama: {email: 'mama@.com', phone: 89021635145, work_phone: '-'},
	I: {email: 'i@.com', phone: 89087710783, work_phone: '-'}	
}

def search nam
	puts "Name: #{nam}, Email: #{@contacts[nam][:email]}, Phone: #{@contacts[nam][:phone]}, Work phone: #{@contacts[nam][:work_phone]} "
end



#Action
loop do
	
	print 'Enter name: '
	name = gets.capitalize.strip.to_sym
	if name == '-'
		break
	end
	search name
	
end