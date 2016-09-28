
def overlap(rect_1, rect_2)

	rect_1_left_x = rect_1[0][0]
	rect_1_right_x = rect_1[1][0]
	rect_1_bot_y = rect_1[0][1]
	rect_1_top_y = rect_1[1][1]
	rect_2_left_x = rect_2[0][0]
	rect_2_right_x = rect_2[1][0]
	rect_2_bot_y = rect_2[0][1]
	rect_2_top_y = rect_2[1][1]

	if (rect_1_left_x < rect_2_left_x && rect_1_right_x > rect_2_left_x) || (rect_1_left_x > rect_2_left_x && rect_1_right_x < Bxrect_2_right_x) || (rect_1_left_x < rect_2_right_x && rect_1_right_x > rect_2_right_x)
		if (rect_1_bot_y < rect_2_bot_y && rect_1_top_y > rect_2_bot_y) || (rect_1_bot_y > rect_2_bot_y && rect_1_top_y < rect_2_top_y) || (rect_1_bot_y < rect_2_top_y && rect_1_top_y > rect_2_top_y)
			return true
		end
return false
end 
	
end


puts overlap( [ [1,10], [4,4] ], [ [2,8], [5,10] ] )