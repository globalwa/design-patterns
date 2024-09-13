def get_min(numbers)
	min = nil

	for num in numbers
		min = min == nil || num < min ? num : min
	end

	min
end

def get_first_positive_number_index(numbers)
	i = 0

	for num in numbers
		if num > 0
			return i
		end

		i += 1
	end

	nil
end