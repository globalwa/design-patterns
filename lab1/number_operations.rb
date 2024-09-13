# 4

# 1 метод
def count_inter_primes_divisors(num)
	count = 0

	(1..num).each do |i|
		is_inter_prime = true

		(1..i).each do |j|
			is_common_divisor = (num % j == 0) && (i % j == 0)

			if (j != 1) && is_common_divisor
				is_inter_prime = false
				break
			end
		end

		if is_inter_prime
			count += 1
		end
	end
	
	count
end

# 2 метод
def calc_num_digits_sum_with_common_divisor(num, divisor)
	sum = 0

	num.abs.digits.each do |digit|
		if digit % divisor == 0
			sum += digit
		end
	end

	sum
end

puts "введите число чтобы получить количество взаимо простых делителей: "
num = STDIN.gets.to_i
puts count_inter_primes_divisors(num)

puts "введите число для подсчета суммы цифр делящихся на 3: "
num = STDIN.gets.to_i
puts calc_num_digits_sum_with_common_divisor(num, 3)