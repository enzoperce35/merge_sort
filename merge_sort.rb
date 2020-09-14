def merge_sort(num, final_values = [], large_values = [[], []])
    if num.length > 2
      parts = num.slice!(0, num.length / 2), num.slice!(0, num.length)
      parts.each_with_index do |part, index|
        if part.length > 1
          large_values[index].push(part[0] > part[1] ? part.slice!(0) : part.slice!(1))
        end
      end
      merge_sort(parts.flatten, final_values, large_values)
    elsif num.length == 2
      num[0] < num[1] ? final_values << num.slice!(0) : final_values << num.slice!(1)
      merge_sort(num.push(large_values).flatten, final_values, large_values = [[], []])
    elsif num.length == 1
      final_values << num[0]
    end
  end

  p merge_sort [35, 50, 25, 10, 40, 20, 25, 30, 5, 15, 50, 5]

=begin
Pseudocode
if "num" array contains 3 or more elements
  divide into two parts
  unless a part has a single element
    compare the first two numbers of that part
  take out the larger value on each part then push to "large_values" array
  recurse method until only one number remains on each part
if numbers == 2
  compare the final two numbers then push the smaller to "final_values" array
  push the "large_values" array values to "num" array
  recurse whole method until "num" array contains only one value
if numbers == 1
  push the last value to "final_values" array the return it's value
=end