def secret_pass pas
	pass = pas
	'*' * pass.size 
end

print "Введите пароль: "
password = gets.chomp

print "Ваш пароль: #{secret_pass password}"

