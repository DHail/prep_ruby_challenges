def is_prime?(prime_candidate)

	number_check = prime_candidate - 1

	(prime_candidate - 2).times do
		if prime_candidate % number_check == 0
			return false
		end
		number_check -= 1
	end
	return true
end


puts is_prime?(179)