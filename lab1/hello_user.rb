# 2

user_name = ARGV[0] 
puts "привет, %s!" % user_name

puts "введи свой любимый язык программирования: "
favorite_lang = STDIN.gets.chomp
if favorite_lang == "ruby"
	puts "подлиза обнаружен"
else
	puts "скоро будет руби"
end

# 3

puts "введи команду на языке ruby: "
ruby_cmd = STDIN.gets
eval(ruby_cmd)

puts "введи команду системы: "
system_cmd = STDIN.gets
system(system_cmd)