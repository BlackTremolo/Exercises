str = 'the quick brown fox jumps over the lazy dog'

arr = str.split(' ')

arr1 = []

arr.each do |i|
	arr1.push(i.split(''))
end	

arr2 = []

arr1.each do |i|
	i.each do |j|
		arr2 << j
	end
end

hh = Hash.new(0)

arr2.each do |i|
   hh[i] += 1
end 

puts hh.inspect

hh1 = Hash.new(0)
puts str.each_char {|ch| hh1[ch] += 1}

def f(sentence)
 hash = Hash.new(0)

 sentence.each_char do |ch|
 hash[ch] += 1
 end

 hash
 end

 puts f('quick brown fox jumps over the lazy dog').inspect