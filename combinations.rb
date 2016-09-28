
def combinations(first_word, second_word)

	list_of_words = []

	first_word.each do |first|
		second_word.each do |second|
			list_of_words << [first, second].join('')
		end
	end

	return list_of_words

end


combinations(["Hack", "Buzz", "Chain", "Big"], ["saw", "ster", "athon", "er"]).each{|word| puts word}