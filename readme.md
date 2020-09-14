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