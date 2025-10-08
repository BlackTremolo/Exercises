dict = {'cat' => ['кот', 'кошка'], 'dog' => ['собака', 'пёс'], 'girl' => ['девушка']}

print 'Введите слово: '
word = gets.strip

puts "Перевод слова: #{dict[word]}"