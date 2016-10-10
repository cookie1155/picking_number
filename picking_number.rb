require_relative 'my_arr'

arr = (1..1000).to_a.shuffle
arr.delete(arr.sample)
my_arr = MyArr.new(arr)

puts my_arr.missing_number
