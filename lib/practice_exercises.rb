
# Time Complexity: O(n) where n is the size of the list
# Space Complexity: O(1) slice! method changes the original array. It does not change the size of the input
def remove_duplicates(list)
  list.each do |num|
    if list.count(num) > 1
      list.slice!(list.index(num))
    end
  end
  return list
end

# Time Complexity: O(n * m) n is the strings input and m is the length of the minimum string
# Space Complexity: O(1) amount of memory used does not change as the input array changes
def longest_prefix(strings)
  # return an empty string if the parameter is empty
  return "" if strings.nil?
  min = strings.min
  max = strings.max
  # iterates through each character in the minimum string
  index = min.length.times do |i|
    if min[i] != max[i]
      break i
    end
  end
  # returns the longest common prefix (excluding the index where it broke out of the loop)
  return min[0...index]
end
