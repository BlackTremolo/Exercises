def p_t_n phone
	@arr = []
	@arr = phone.split('')
	@arr[3] = 6
	@arr[4] = 2
        @arr[5] = 8
	@arr[6] = 7
	@arr[7] = 3
	@arr[8] = 7
	@arr[9] = 7

	@arr.each {|i| print i}

end

p_t_n '555MATRESS'

