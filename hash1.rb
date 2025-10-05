obj = {
soccer_ball: 410,
tennis_ball: 58,
golf_ball: 45
}

print 'How many soccer balls you want to pay '
soccer_ball = gets.to_i

print 'How many tennis balls you want to pay '
tennis_ball = gets.to_i

print 'How many golf balls you want to pay '
golf_ball = gets.to_i

total_weight = soccer_ball * obj[:soccer_ball] + tennis_ball * obj[:tennis_ball] + golf_ball * obj[:golf_ball]

puts "Total weight: #{total_weight}, total weight on Moon: #{total_weight/6}"

