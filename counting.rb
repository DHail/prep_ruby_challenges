
def count(total_number, friends)

	number = 1
	direction = 1
	friend = 0

	while number <= total_number

		puts "#{friends[friend]} says #{number}"

		if number % 7 == 0
			if direction == 1
				direction = -1
			else
				direction = 1
			end
		end

		if number % 11 == 0
			if direction == 1 && friend == 9
				friend = 0
			elsif direction == -1 && friend == 0
				friend = 9				
			else
				friend += direction
			end
		end

		if direction == 1 && friend == 9
			friend = 0
		elsif direction == -1 && friend == 0
			friend = 9
		else
			friend += direction
		end

		number += 1
	end
end

count(100, ["Jim", "Garrett", "Sammie", "Dave", "Will", "Bubba", "Billy", "Sabrina", "Fake Billy", "Fat Garrett"])

=begin
Advanced version follows
=end

def printit(friends, total_number)
	
	number = 1
	direction = 1
	friend = 1

	while number <= total_number

		puts "Friend #{friend} says #{number}"

		if number % 7 == 0
			if direction == 1
				direction = -1
			else
				direction = 1
			end
		end

		if number % 11 == 0
			if direction == 1 && friend == friends
				friend = 1
			elsif direction == -1 && friend == 1
				friend = friends				
			else
				friend += direction
			end
		end

		if direction == 1 && friend == friends
			friend = 1
		elsif direction == -1 && friend == 1
			friend = friends
		else
			friend += direction
		end

		number += 1
	end

end

puts "Enter the number of friends"
counters = gets.chomp.to_i

puts "How high do you want them to count?"
count = gets.chomp.to_i

printit(counters, count)