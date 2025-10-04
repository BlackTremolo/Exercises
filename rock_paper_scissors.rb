#Methods
def change_choice choice
	if choice == 'R'
		choice = 0
	elsif choice == 'S'
		choice = 1

	elsif choice == 'P'
		choice = 2
	end
	
	@arr[choice]		   	
end

def score user, computer

	if user == :rock && computer == :scissors
		@arr_score[0] += 1
		puts 'User win'
	elsif user == :rock && computer == :paper
		@arr_score[1] += 1
		puts 'Computer win'
	elsif user == :rock && computer == :rock
		puts 'Nobody wins'

	elsif user == :scissors && computer == :paper
		@arr_score[0] += 1
		puts 'User win'
	elsif user == :scissors && computer == :rock
		@arr_score[1] += 1
		puts 'Computer win'
	elsif user == :scissors && computer == :scissors
		puts 'Nobody wins'
	
	elsif user == :paper && computer == :rock
		@arr_score[0] += 1
		puts 'User win'
	elsif user == :paper && computer == :scissors
		@arr_score[1] += 1
		puts 'Computer win'
	elsif user == :paper && computer == :paper
		puts 'Nobody wins'
	end

	puts "User score:#{@arr_score[0]}, Computer score: #{@arr_score[1]}"	
end

def victory total_score
	if total_score[0] > total_score[1]
		puts 'User win the game'
	elsif total_score[0] == total_score[1]
		puts 'Draw'
	else
		puts 'Computer win the game'		
	end
end	

#Action
@arr = [:rock , :scissors, :paper]
@arr_score = [0, 0]		

times = 0

print 'How many times you want to play? '
plais = gets.to_i


plais.times do

puts "There are #{times += 1} play"

user_choice = loop do
	print 'Enter (R)ock, (S)cissors or (P)aper: '
	user_choice = gets.strip.capitalize

	if user_choice != 'R' && user_choice != 'S' && user_choice != 'P'
		puts "NoCorrect enter #{user_choice}"
	else
		break user_choice	
	end

end

computer_choice = rand(0..1)

puts "User: #{user_choice = change_choice user_choice} | Computer: #{computer_choice = change_choice computer_choice}"

score user_choice, computer_choice
puts '-' * 80
end

puts '=' * 80

victory @arr_score