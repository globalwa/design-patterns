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