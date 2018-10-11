# encoding: utf-8
#
# Программа, выбрасывающая значение от 1 до 6 — одну игральную кость, версия 2.
# Cпрашиваем у юзера сколько кубиков кинуть.
#
# (с) goodprogrammer.ru

# Спрашиваем у пользователя, сколько кубиков кинуть и записываем его ответ в
# переменную number.
puts "How many dice?"
number = gets.to_i
system 'cls' or 'clear'

5.times do
  number.times do
    print "#{rand(6) + 1} "
  end
  sleep 0.5
  system 'cls' or 'clear'
end

# С помощью мтеода целого числа times запускаем цикл, который заданное число раз
# повторяет бросок кубика.
sum = 0
number.times do
  dice = rand(6) + 1
  sum += dice
  print "#{dice} "
end

puts
puts  "sum of dices = #{sum}"
