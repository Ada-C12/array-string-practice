
# Time Complexity: O(n)
# Space Complexity: O(1)
def remove_duplicates(list)
  raise ArgumentError if !list
  length = list.length
  
  if length > 0
    unique_index = 0
    unique_element = list.first
    
    length.times do |index|
      if list[index] != unique_element
        unique_element = list[index]
        unique_index += 1
        list[unique_index] = unique_element
      end
      
      if index > unique_index
        list[index] = nil
      end
    end
    
  end
  return list
end

# Time Complexity: O(n * m) where n is the number of strings in input array, m is the length
# (number of characters) of either prefix string or current string. 
# Space Complexity: O(1) because this method uses constant number of temp variables and returns 
# only 1 string (it might contain m characters but still only 1 string)

def longest_prefix(strings)
  raise ArgumentError if !strings
  
  prefix = ""
  if strings.length > 0
    prefix = strings[0]
    (strings.length - 1).times do |i|
      current_string = strings[i + 1]

      length = prefix.length < current_string.length ? prefix.length : current_string.length
      length.times do |j|
        if prefix[j] != current_string[j]
          prefix = prefix[0...j]
          break
        end
      end
    end
  end

  return prefix
end

