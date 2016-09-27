def factorial (number)

	total = 1
	number.times do
		total = total * number
		number -= 1
	end
	return total
end

puts factorial(6)