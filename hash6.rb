@params = {angle: 90, astronaut: [:belka, :strelka], delay: 5}

#Method
def launch option
	puts "До запуска осталось: "
	if @delay_input != ''
		@delay_input.to_i.downto(1) do |x| 
			puts x
			sleep(1)
		end
	elsif @delay_input == ''
	        option[:delay].downto(1) do |x| 
			puts x 
			sleep(1)
		end
	end

	astronaut = @astronaut_input || option[:astronaut].inspect
	puts "Запущен(ы) космонавт(ы): #{astronaut}"
	
	angle = @angle_input || option[:angle]
	puts "Корабль запущен под углом #{angle}"
	
end


#Action

print 'Введите время до запуска(секунды): '
@delay_input = gets.strip

print 'Введите имя космонавта, который полетит(Белка или Стрелка. Введите пустую строку , чтобы полетели все)'
@astronaut_input = gets.strip.capitalize

if @astronaut_input == ''
	@astronaut_input = @params[:astronaut]
elsif @astronaut_input == 'Белка'
	@astronaut_input = @params[:astronaut][0]
elsif @astronaut_input == 'Стрелка'
	@astronaut_input = @params[:astronaut][1]	
end

print 'Введите угол полёта коробля (Пустой ввод = значение поумолчанию): '
@angle_input = gets.to_i

if @angle_input == 0
	@angle_input = @params[:angle]
end

launch @params