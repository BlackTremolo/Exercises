params = { soccer_ball_count: 3, tennis_ball_count: 2, golf_ball_count: 1 }

#Method

def f(option)
	a = option[:soccer_ball_count] || 0
	b = option[:tennis_ball_count] || 0
	c = option[:golf_ball_count]   || 4
	(a * 410) + (b * 58) + (c * 45) + 29
end

#Action

puts f(params)