# 4

# 1 метод
def count_inter_primes(num)
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

puts "введите число чтобы получить количество взаимо простых делителей: "
num = STDIN.gets.to_i
puts "%d" % count_inter_primes(num)