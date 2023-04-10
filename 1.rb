p "1. Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными."
p array = (1..10).to_a
p array.partition(&:even?).flatten
25.times { print ("-") }
puts


p "2. Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными."
p array = (1..10).to_a
p array.partition(&:odd?).flatten
25.times { print ("-") }
puts


p "3. Дан целочисленный массив. Вывести номер первого из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ]."
p array = [5, 1, 2, 6, 4, 8, 10]
p array.index { |i| array[0] < i && i < array[-1] } || []
25.times { print ("-") }
puts


p "4. Дан целочисленный массив. Вывести номер последнего из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ]."
p array = [5, 1, 2, 6, 4, 8, 10]
p array.rindex { |i| array[0] < i && i < array[-1] } || []
25.times { print ("-") }
puts


p "5.Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент. Первый и последний элементы массива не изменять."
p array = [5, 6, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array2 = array.map.with_index do |element, index|
(index != 0 && index != array.length - 1) && element.even? ? element + array.first : element
end
p array2
25.times { print ("-") }
puts


p "6.Дан целочисленный массив. Преобразовать его, прибавив к четным числам последний элемент. Первый и последний элементы массива не изменять."
p array = [5, 6, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array2 = array.map.with_index do |element, index|
  (index != 0 && index != array.length - 1) && element.even? ? element + array[-1] : element
end
p array2
25.times { print ("-") }
puts


p "7. Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний элемент. Первый и последний элементы массива не изменять."
p array = (1..10).to_a
array2 = array.map.with_index do |element, index|
  (index != 0 && index != array.length - 1 ) && element.odd? ? element + array.last : element
end
p array2
25.times { print ("-") }
puts

p "8. Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам первый элемент. Первый и последний элементы массива не изменять."
p array = (1..10).to_a
array2 = array.map.with_index do |element, index|
  (index != 0 && index != array.length - 1) && element.odd? ? element+ array.first : element
end
p array2
25.times { print ("-") }
puts

p "9. Дан целочисленный массив. Заменить все положительные элементы на значение минимального."
'9. Дан целочисленный массив. Заменить все положительные элементы на значение минимального.'
p array = [-11, 8, 7, -5, 0, 11, -21]
array_min = array.min
array2 = array.each_index { |i| array[i] = array_min if array[i].positive? }
p array2
25.times { print ("-") }
puts

p '10. Дан целочисленный массив. Заменить все положительные элементы на значение максимального.'
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.map { |element| element.positive? ? array.max : element }
25.times { print ("-") }
puts

p '11. Дан целочисленный массив. Заменить все отрицательные элементы на значение минимального.'
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.map { |element| element.negative? ? array.min : element }
25.times { print ("-") }
puts

p '12. Дан целочисленный массив. Заменить все отрицательные элементы на значение максимального.'
p array = [-11, 8, 7, -5, 0, 11, -21]
array_max = array.max
array2 = array.each_index { |i| array[i] = array_max if array[i].negative? }
p array2
25.times { print ("-") }
puts

p "13. Дан целочисленный массив. Осуществить циклический сдвиг элементов массива влево на одну позицию."
p array = [1, 2, 4, 6, 7, 0, -5, -3]
p array.rotate
25.times { print ("-") }
puts

p "14. Дан целочисленный массив. Осуществить циклический сдвиг элементов массива вправо на одну позицию."
p array = [1, 2, 4, 6, 7, 0, -5, -3]
p array.rotate(-1)
25.times { print ("-") }
puts

p "17. Дан целочисленный массив. Найти количество его локальных максимумов."
p array = [-11, 8, 7, -5, 0, 11, -21]
count = 0
(1..(array.count - 2)).each do |i|
  count += 1 if array[i] > array[i - 1] && array[i] > array[i + 1]
end
p count
25.times { print ("-") }
puts

p "18. Дан целочисленный массив. Найти количество его локальных минимумов."
p array = [-11, 8, 7, -5, 0, 11, -21]
count = 0
(1..(array.count - 2)).each do |i|
  count += 1 if array[i] < array[i - 1] && array[i] < array[i + 1]
end
p count
25.times { print ("-") }
puts

p "19. Дан целочисленный массив. Найти максимальный из его локальных максимумов."
p array = [-11, 8, 7, -5, 0, 11, -21]
maxs = []
(1..(array.count - 2)).each do |i|
  maxs.push(array[i]) if array[i] > array[i - 1] && array[i] > array[i + 1]
end
p maxs.max
25.times { print ("-") }
puts

p "20. Дан целочисленный массив. Найти минимальный из его локальных минимумов."
p array = [-11, 8, 7, -5, 0, 11, -21]
mins = []
(1..(array.count - 2)).each do |i|
  mins.push(array[i]) if array[i] < array[i - 1] && array[i] < array[i + 1]
end
p mins.min
25.times { print ("-") }
puts

p puts "25. Дан целочисленный массив. Преобразовать его, вставив перед каждым положительным элементом нулевой элемент."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.map { |element| element.positive? ? [array[0], element] : element }.flatten!
25.times { print ("-") }
puts

p "26. Дан целочисленный массив. Преобразовать его, вставив после каждого положительного элемента нулевой элемент."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.map { |element| element.positive? ? [element, array[0]] : element }.flatten!
25.times { print ("-") }
puts

p "27. Дан целочисленный массив. Преобразовать его, вставив после каждого отрицательного элемента нулевой элемент."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.map { |element| element.negative? ? [element, array[0]] : element }.flatten!
25.times { print ("-") }
puts

p "28. Дан целочисленный массив. Преобразовать его, вставив перед каждым отрицательным элементом нулевой элемент."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.map { |element| element.negative? ? [array[0], element] : element }.flatten!
25.times { print ("-") }
puts

p "29. Дан целочисленный массив. Упорядочить его по возрастанию."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.sort!
25.times { print ("-") }
puts

p "30. Дан целочисленный массив. Упорядочить его по убыванию."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.sort! { |a, b| b <=> a }
25.times { print ("-") }
puts

p "35. Дан целочисленный массив. Найти индекс первого минимального элемента."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.index(array.min)
25.times { print ("-") }
puts

p "36. Дан целочисленный массив. Найти индекс первого максимального элемента."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.index(array.max)
25.times { print ("-") }
puts

p "37. Дан целочисленный массив. Найти индекс последнего минимального элемента."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.rindex(array.min)
25.times { print ("-") }
puts

p "38. Дан целочисленный массив. Найти индекс последнего максимального элемента."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.rindex(array.max)
25.times { print ("-") }
puts

p "39. Дан целочисленный массив. Найти количество минимальных элементов."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.count(array.min)
25.times { print ("-") }
puts

p "40. Дан целочисленный массив. Найти количество максимальных элементов."
p array = [45, 15, 0, 45, 29, -855, 2]
p array.count(array.max)
25.times { print ("-") }
puts

p "41. Дан целочисленный массив. Найти минимальный четный элемент."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.select(&:even?).min
25.times { print ("-") }
puts

p "42. Дан целочисленный массив. Найти минимальный нечетный элемент."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.select(&:odd?).min
25.times { print ("-") }
puts

p "43. Дан целочисленный массив. Найти максимальный четный элемент."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.select(&:even?).max
25.times { print ("-") }
puts

p "44. Дан целочисленный массив. Найти максимальный нечетный элемент."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.select(&:odd?).max
25.times { print ("-") }
puts

p "45. Дан целочисленный массив. Найти минимальный положительный элемент."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.select(&:positive?).min
25.times { print ("-") }
puts

p "46. Дан целочисленный массив. Найти максимальный отрицательный элемент."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.select(&:negative?).max
25.times { print ("-") }
puts

p "47. Дан целочисленный массив и интервал a..b. Найти минимальный из элементов в этом интервале."
p array = [42, -68, 25, -97, 5, 62]
p array[0...-1].min
25.times { print ("-") }
puts

p "48. Дан целочисленный массив и интервал a..b. Найти максимальный из элементов в этом интервале."
p array = [42, -68, 25, -97, 5, 62]
p array[1...4].max
25.times { print ("-") }
puts

p "49. Дан целочисленный массив. Найти количество элементов, расположенных перед первым минимальным."
p array = [42, -68, 25, -97, 5, 62]
p array[0...array.index(array.min)].size

p "61. Дан целочисленный массив. Найти два наибольших элемента."
p array = [42, -68, 25, -97, 5, 62]
p array.max(2)
p 25.times { print ("-") }
puts

p "62. Дан целочисленный массив. Найти два наименьших элемента."
p array = [42, -68, 25, -97, 5, 62]
p array.min(2)
25.times { print ("-") }
puts

p "65. Дан целочисленный массив. Вывести вначале все его четные элементы, а затем - нечетные."
p array = [42, -68, 25, -97, 5, 62]
p array = array.select(&:even?) + array.select(&:odd?)
25.times { print ("-") }
puts

p "66. Дан целочисленный массив. Вывести вначале все его нечетные элементы, а затем - четные."
p array = [42, -68, 25, -97, 5, 62]
p array.partition(&:odd?).flatten!
25.times { print ("-") }
puts

p "79. Дан целочисленный массив. Возвести в квадрат отрицательные элементы и в третью степень - положительные. Нулевые элементы - не изменять."
p array = [-2, -4, 0, 2, 4]
array2 = array.each_index do |i|
  array[i] = array[i]**3 if array[i].positive?
  array[i] = array[i]**2 if array[i].negative?
end
p array2
25.times { print ("-") }
puts

p "87. Дан целочисленный массив. Найти все четные элементы."
p array = [-3, -6, -11, 0, 58, 856, 57]
p array.find_all(&:even?)
25.times { print ("-") }
puts

p "88. Дан целочисленный массив. Найти количество четных элементов."
p array = [-3, -6, -11, 0, 58, 856, 57]
p array.count(&:even?)
25.times { print ("-") }
puts

p "89. Дан целочисленный массив. Найти все нечетные элементы."
p array = [-3, -6, -11, 0, 58, 856, 57]
p array.select(&:odd?)
25.times { print ("-") }
puts
p "1. Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными."
p array = (1..10).to_a
p array.partition(&:even?).flatten
25.times { print ("-") }
puts


p "2. Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными."
p array = (1..10).to_a
p array.partition(&:odd?).flatten
25.times { print ("-") }
puts


p "3. Дан целочисленный массив. Вывести номер первого из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ]."
p array = [5, 1, 2, 6, 4, 8, 10]
p array.index { |i| array[0] < i && i < array[-1] } || []
25.times { print ("-") }
puts


p "4. Дан целочисленный массив. Вывести номер последнего из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ]."
p array = [5, 1, 2, 6, 4, 8, 10]
p array.rindex { |i| array[0] < i && i < array[-1] } || []
25.times { print ("-") }
puts


p "5.Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент. Первый и последний элементы массива не изменять."
p array = [5, 6, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array2 = array.map.with_index do |element, index|
(index != 0 && index != array.length - 1) && element.even? ? element + array.first : element
end
p array2
25.times { print ("-") }
puts


p "6.Дан целочисленный массив. Преобразовать его, прибавив к четным числам последний элемент. Первый и последний элементы массива не изменять."
p array = [5, 6, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array2 = array.map.with_index do |element, index|
  (index != 0 && index != array.length - 1) && element.even? ? element + array[-1] : element
end
p array2
25.times { print ("-") }
puts


p "7. Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний элемент. Первый и последний элементы массива не изменять."
p array = (1..10).to_a
array2 = array.map.with_index do |element, index|
  (index != 0 && index != array.length - 1 ) && element.odd? ? element + array.last : element
end
p array2
25.times { print ("-") }
puts

p "8. Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам первый элемент. Первый и последний элементы массива не изменять."
p array = (1..10).to_a
array2 = array.map.with_index do |element, index|
  (index != 0 && index != array.length - 1) && element.odd? ? element+ array.first : element
end
p array2
25.times { print ("-") }
puts

p "9. Дан целочисленный массив. Заменить все положительные элементы на значение минимального."
'9. Дан целочисленный массив. Заменить все положительные элементы на значение минимального.'
p array = [-11, 8, 7, -5, 0, 11, -21]
array_min = array.min
array2 = array.each_index { |i| array[i] = array_min if array[i].positive? }
p array2
25.times { print ("-") }
puts

p '10. Дан целочисленный массив. Заменить все положительные элементы на значение максимального.'
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.map { |element| element.positive? ? array.max : element }
25.times { print ("-") }
puts

p '11. Дан целочисленный массив. Заменить все отрицательные элементы на значение минимального.'
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.map { |element| element.negative? ? array.min : element }
25.times { print ("-") }
puts

p '12. Дан целочисленный массив. Заменить все отрицательные элементы на значение максимального.'
p array = [-11, 8, 7, -5, 0, 11, -21]
array_max = array.max
array2 = array.each_index { |i| array[i] = array_max if array[i].negative? }
p array2
25.times { print ("-") }
puts

p "13. Дан целочисленный массив. Осуществить циклический сдвиг элементов массива влево на одну позицию."
p array = [1, 2, 4, 6, 7, 0, -5, -3]
p array.rotate
25.times { print ("-") }
puts

p "14. Дан целочисленный массив. Осуществить циклический сдвиг элементов массива вправо на одну позицию."
p array = [1, 2, 4, 6, 7, 0, -5, -3]
p array.rotate(-1)
25.times { print ("-") }
puts

p "17. Дан целочисленный массив. Найти количество его локальных максимумов."
p array = [-11, 8, 7, -5, 0, 11, -21]
count = 0
(1..(array.count - 2)).each do |i|
  count += 1 if array[i] > array[i - 1] && array[i] > array[i + 1]
end
p count
25.times { print ("-") }
puts

p "18. Дан целочисленный массив. Найти количество его локальных минимумов."
p array = [-11, 8, 7, -5, 0, 11, -21]
count = 0
(1..(array.count - 2)).each do |i|
  count += 1 if array[i] < array[i - 1] && array[i] < array[i + 1]
end
p count
25.times { print ("-") }
puts

p "19. Дан целочисленный массив. Найти максимальный из его локальных максимумов."
p array = [-11, 8, 7, -5, 0, 11, -21]
maxs = []
(1..(array.count - 2)).each do |i|
  maxs.push(array[i]) if array[i] > array[i - 1] && array[i] > array[i + 1]
end
p maxs.max
25.times { print ("-") }
puts

p "20. Дан целочисленный массив. Найти минимальный из его локальных минимумов."
p array = [-11, 8, 7, -5, 0, 11, -21]
mins = []
(1..(array.count - 2)).each do |i|
  mins.push(array[i]) if array[i] < array[i - 1] && array[i] < array[i + 1]
end
p mins.min
25.times { print ("-") }
puts

p puts "25. Дан целочисленный массив. Преобразовать его, вставив перед каждым положительным элементом нулевой элемент."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.map { |element| element.positive? ? [array[0], element] : element }.flatten!
25.times { print ("-") }
puts

p "26. Дан целочисленный массив. Преобразовать его, вставив после каждого положительного элемента нулевой элемент."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.map { |element| element.positive? ? [element, array[0]] : element }.flatten!
25.times { print ("-") }
puts

p "27. Дан целочисленный массив. Преобразовать его, вставив после каждого отрицательного элемента нулевой элемент."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.map { |element| element.negative? ? [element, array[0]] : element }.flatten!
25.times { print ("-") }
puts

p "28. Дан целочисленный массив. Преобразовать его, вставив перед каждым отрицательным элементом нулевой элемент."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.map { |element| element.negative? ? [array[0], element] : element }.flatten!
25.times { print ("-") }
puts

p "29. Дан целочисленный массив. Упорядочить его по возрастанию."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.sort!
25.times { print ("-") }
puts

p "30. Дан целочисленный массив. Упорядочить его по убыванию."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.sort! { |a, b| b <=> a }
25.times { print ("-") }
puts

p "35. Дан целочисленный массив. Найти индекс первого минимального элемента."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.index(array.min)
25.times { print ("-") }
puts

p "36. Дан целочисленный массив. Найти индекс первого максимального элемента."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.index(array.max)
25.times { print ("-") }
puts

p "37. Дан целочисленный массив. Найти индекс последнего минимального элемента."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.rindex(array.min)
25.times { print ("-") }
puts

p "38. Дан целочисленный массив. Найти индекс последнего максимального элемента."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.rindex(array.max)
25.times { print ("-") }
puts

p "39. Дан целочисленный массив. Найти количество минимальных элементов."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.count(array.min)
25.times { print ("-") }
puts

p "40. Дан целочисленный массив. Найти количество максимальных элементов."
p array = [45, 15, 0, 45, 29, -855, 2]
p array.count(array.max)
25.times { print ("-") }
puts

p "41. Дан целочисленный массив. Найти минимальный четный элемент."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.select(&:even?).min
25.times { print ("-") }
puts

p "42. Дан целочисленный массив. Найти минимальный нечетный элемент."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.select(&:odd?).min
25.times { print ("-") }
puts

p "43. Дан целочисленный массив. Найти максимальный четный элемент."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.select(&:even?).max
25.times { print ("-") }
puts

p "44. Дан целочисленный массив. Найти максимальный нечетный элемент."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.select(&:odd?).max
25.times { print ("-") }
puts

p "45. Дан целочисленный массив. Найти минимальный положительный элемент."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.select(&:positive?).min
25.times { print ("-") }
puts

p "46. Дан целочисленный массив. Найти максимальный отрицательный элемент."
p array = [-11, 8, 7, -5, 0, 11, -21]
p array.select(&:negative?).max
25.times { print ("-") }
puts

p "47. Дан целочисленный массив и интервал a..b. Найти минимальный из элементов в этом интервале."
p array = [42, -68, 25, -97, 5, 62]
p array[0...-1].min
25.times { print ("-") }
puts

p "48. Дан целочисленный массив и интервал a..b. Найти максимальный из элементов в этом интервале."
p array = [42, -68, 25, -97, 5, 62]
p array[1...4].max
25.times { print ("-") }
puts

p "49. Дан целочисленный массив. Найти количество элементов, расположенных перед первым минимальным."
p array = [42, -68, 25, -97, 5, 62]
p array[0...array.index(array.min)].size

p "61. Дан целочисленный массив. Найти два наибольших элемента."
p array = [42, -68, 25, -97, 5, 62]
p array.max(2)
p 25.times { print ("-") }
puts

p "62. Дан целочисленный массив. Найти два наименьших элемента."
p array = [42, -68, 25, -97, 5, 62]
p array.min(2)
25.times { print ("-") }
puts

p "65. Дан целочисленный массив. Вывести вначале все его четные элементы, а затем - нечетные."
p array = [42, -68, 25, -97, 5, 62]
p array = array.select(&:even?) + array.select(&:odd?)
25.times { print ("-") }
puts

p "66. Дан целочисленный массив. Вывести вначале все его нечетные элементы, а затем - четные."
p array = [42, -68, 25, -97, 5, 62]
p array.partition(&:odd?).flatten!
25.times { print ("-") }
puts

p "79. Дан целочисленный массив. Возвести в квадрат отрицательные элементы и в третью степень - положительные. Нулевые элементы - не изменять."
p array = [-2, -4, 0, 2, 4]
array2 = array.each_index do |i|
  array[i] = array[i]**3 if array[i].positive?
  array[i] = array[i]**2 if array[i].negative?
end
p array2
25.times { print ("-") }
puts

p "87. Дан целочисленный массив. Найти все четные элементы."
p array = [-3, -6, -11, 0, 58, 856, 57]
p array.find_all(&:even?)
25.times { print ("-") }
puts

p "88. Дан целочисленный массив. Найти количество четных элементов."
p array = [-3, -6, -11, 0, 58, 856, 57]
p array.count(&:even?)
25.times { print ("-") }
puts

p "89. Дан целочисленный массив. Найти все нечетные элементы."
p array = [-3, -6, -11, 0, 58, 856, 57]
p array.select(&:odd?)
25.times { print ("-") }
puts

p "90. Дан целочисленный массив. Найти количество нечетных элементов."
p array = [-3, -6, -11, 0, 58, 856, 57]
p array.count(&:odd?)
25.times { print ("-") }
puts

p "95. Дан целочисленный массив и число К. Вывести количество элементов, меньших К."
p "k = #{k = 60}"

p array = [-3, -6, -11, 0, 78, 58, 856, 57, 100,]
array2 = array.select {|x| x < 60 }
p array2.size
p "або"
p array = [-3, -6, -11, 0, 78, 58, 856, 57, 100,]
p k = 60
array2 = (0...array.size).select{ |x| array[x] < k}
p array2.size
25.times { print ("-") }
puts

p "96.Дан целочисленный массив и число К. Вывести индекс первого элемента, большего К."
p "k = #{k = 60}"
p array = [-3, -6, -11, 0, 78, 58, 856, 57, 100,]
array2 = array.index {|x| x > k}
p array2
25.times { print ("-") }
puts

p "97. Дан целочисленный массив и число К. Вывести индекс последнего элемента, меньшего К."
p "k = #{k = 60}"
p array = [-3, -6, -11, 0, 78, 58, 856, 57, 100,]
array2 = array.rindex {|x| x <k }
p array2
25.times { print ("-") }
puts

p "98. Дан целочисленный массив. Вывести индексы элементов, которые меньше своего левого соседа, и количество таких чисел."
p array = [1, 2, 4, 6, 7, 0, -5, -3]
array2 = (1...array.size).select{ |x| array[x] < array[x-1] }
p array2, array2.size
25.times { print ("-") }
puts
p "90. Дан целочисленный массив. Найти количество нечетных элементов."
p array = [-3, -6, -11, 0, 58, 856, 57]
p array.count(&:odd?)
25.times { print ("-") }
puts

p "95. Дан целочисленный массив и число К. Вывести количество элементов, меньших К."
p "k = #{k = 60}"

p array = [-3, -6, -11, 0, 78, 58, 856, 57, 100,]
array2 = array.select {|x| x < 60 }
p array2.size
p "або"
p array = [-3, -6, -11, 0, 78, 58, 856, 57, 100,]
p k = 60
array2 = (0...array.size).select{ |x| array[x] < k}
p array2.size
25.times { print ("-") }
puts

p "96.Дан целочисленный массив и число К. Вывести индекс первого элемента, большего К."
p "k = #{k = 60}"
p array = [-3, -6, -11, 0, 78, 58, 856, 57, 100,]
array2 = array.index {|x| x > k}
p array2
25.times { print ("-") }
puts

p "97. Дан целочисленный массив и число К. Вывести индекс последнего элемента, меньшего К."
p "k = #{k = 60}"
p array = [-3, -6, -11, 0, 78, 58, 856, 57, 100,]
array2 = array.rindex {|x| x <k }
p array2
25.times { print ("-") }
puts

p "98. Дан целочисленный массив. Вывести индексы элементов, которые меньше своего левого соседа, и количество таких чисел."
p array = [1, 2, 4, 6, 7, 0, -5, -3]
array2 = (1...array.size).select{ |x| array[x] < array[x-1] }
p array2, array2.size
25.times { print ("-") }
puts
