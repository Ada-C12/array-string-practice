
# Time Complexity: 0(n)
# Space Complexity: 0(1), values in an array are being replaced at their index instead of a new array being made
def remove_duplicates(list)
  if list.length > 1 # if list length is 1 or less, there are obviously no duplicates
    (list.length).times do |i|
      if list[i] == list[i+1]
        list[i] = nil
      end
    end
  end
  return list
end

# Time Complexity: 0(n^2), the time complexity comes from the first times loop, which loops over the `strings` array as well as each string in the array based on their respective lengths.
# Space Complexity: 0(n), because the length of the `matches` array depends on the length of the `strings` array.
def longest_prefix(strings)
  
  # `matches` holds the length of each matched prefix in a `strings` array
  matches = []
  
  (strings.length).times do |i|
    (strings[i].length).times do |j| 
      if strings[i] == nil || strings[i+1] == nil
        break
      elsif strings[i][j] == strings[i+1][j]
        matches[i] = j+1
      end
    end
  end
  
  # `prefix_length` starts with the length of the first matched prefix, is updated with any shorter lengths in the `matches` array
  prefix_length = matches[0]
  
  (matches.length).times do |i|
    if matches[0] == nil
      prefix_length = 0
    elsif matches[i] < prefix_length
      prefix_length = matches[i]
    end
  end
  
  # `prefix` holds a string that's made by getting the first `prefix_length` number of characters in the first string in the `strings` array.
  prefix = ""
  
  prefix_length.times do |i|
    prefix += "#{strings[0][i]}"
  end
  return prefix
end
