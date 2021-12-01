input = File.read('input.csv').split("\n")

readings = input.map do |number|
  number.to_i
end

# part 1 - comparing each measurement to the one before
count = 0
loops = readings.size - 1

loops.times do |n|
  count += 1 if readings[n+1] > readings[n]
end

p count

# part 2 - three measurement sliding window
count = 0
loops = readings.size - 3

loops.times do |n|
  window_1 = readings[n] + readings[n+1] + readings[n+2]
  window_2 = readings[n+1] + readings[n+2] + readings[n+3]
  count += 1 if window_2 > window_1
end

p count
