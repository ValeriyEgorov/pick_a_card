# Напишем программу, которая выбирает из колоды 52 карт произвольную.
# encoding: UTF-8
if Gem.win_platform?
	Encoding.default_external = Encoding.find(Encoding.locale_charmap)
	Encoding.default_internal = __ENCODING__

	[STDIN, STDOUT].each do |io|
		io.set_encoding(Encoding.default_external, Encoding.default_internal)
	end
end


# Номера карт
number = ["2","3","4","5","6","7","8","9","10","Валет","Дама","Король","Туз"]
names = ["Пики","Черви","Крести","Буби"]

# Выбор произвольной карты
puts number.sample + " " + names.sample
