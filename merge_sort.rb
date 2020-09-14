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
  
