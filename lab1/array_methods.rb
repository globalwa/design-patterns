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

def process_array(selected_method, path)
  file = File.new(path)

  array = file.readlines.map{|line| line.chomp}.map{|value| value.to_i}

  method_result = nil

  case selected_method
  when 1
    method_result = get_min(array)
  when 2
    method_result = get_first_positive_number_index(array)
  end

  method_result
end

puts "введите метод: \n1 - найти минимальный элемент массива\n2 - найти первый положительный элемент\n"
selected_method = gets.to_i

puts "введите адрес файла где описан массив: "
path = STDIN.gets.chomp

puts process_array(selected_method, path)