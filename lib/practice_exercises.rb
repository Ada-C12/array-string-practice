require 'pry'

# Time Complexity: O(n) where n is the length of the array
# Space Complexity: O(1) becasue no new array is created to hold non-duplicates. Instead the contents of the original array are overwritten while the loop is running.
def remove_duplicates(list)
  if list.length == 0
    return []
  end
  
  length = list.length
  i = 0
  j = 0
  while i < length-1
    if list[i] != list[i+1]
      list[j] = list[i]
      j += 1
    end
    i += 1
  end
  list[j] = list[length - 1]
  
  ((j+1)..(length-1)).each do |index|
    list.pop()
  end
  
  # list.each_with_index do |item,index|
  #   if item == nil
  #     list.delete_at(index)
  #   end
  # end
  
  # list = list[0..j]
  return list
end

# Time Complexity: O(m*n), where n is the length of the array and m is the length of characters of the shortest string in the array.
# Space Complexity: O(n) because a new string is created in memory to hold the common prefix
def longest_prefix(strings)
  common_string = ""
  if strings.length == 0
    return common_string
  end
  
  shortest_element = strings.min
  shortest_element_length = shortest_element.length
  i = 0
  while i < shortest_element_length
    char = shortest_element[i]
    strings.each do |string|
      if char != string[i]
        return common_string
      end
    end
    common_string += char
    i += 1
  end
  
  return common_string
end

