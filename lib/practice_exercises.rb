
# Time Complexity: O(n)
# Space Complexity: O(n)
def remove_duplicates(list)
  # go through each element in the array and remove duplicates
  
  if list.length == 1 || list[0] == nil
    return list
  end
  
  list.each_with_index do |item, i|
    if item == list[i + 1]
      list[i + 1] = nil 
    end
  end
  
  
  return list
  
end

# Time Complexity: O(n * m)
# Space Complexity: O(1)
def longest_prefix(strings)
  
  longest_prefix = ""
  strings[0].length.times do |i|
    char = strings[0][i]
    strings.each_with_index do |string|
      if string[i] != char || string[i] == nil
        break
      elsif char == string[i] && string == strings.last
        longest_prefix += char
      end
    end
  end
  return longest_prefix
end
