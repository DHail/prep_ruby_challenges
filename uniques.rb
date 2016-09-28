def uniques(array)

	item = 0
	item_to_check = 0
	n = 1

	(array.length - n).times do 
		item_to_check = item + 1

		(array.length - n).times do
			if array[item].to_s == array[item_to_check].to_s
				array.delete_at(item_to_check)
				item -= 1
				n += 1
				break				
			end
			item_to_check += 1
		end
		item += 1
	end

	return array
end


uniques([1, 2, 4, "hello", 88, "hi", 2, "hello", 88, 88, 88, 88, 5, 999, 999, 5, "hello"]).each{|x| puts x}