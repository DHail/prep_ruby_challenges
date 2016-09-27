

def power (base, exponent)
	total = base
	exponent.times do 
		total = total * base
	end
	return total
end


puts power(3, 4)
