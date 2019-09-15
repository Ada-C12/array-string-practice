
# Time Complexity: O(n)
# Space Complexity: O(1)
def remove_duplicates(list)
  length = list.length
  i = 0
  length.times do
    value_1 = list[i]
    value_2 = list[i + 1]
    
    if value_1 == value_2
      list.delete_at(i)
      i += 1
    else 
      i += 1
    end
  end
  
  return list
end

# Time Complexity: O(n * m) - in this case n represents the length of the array (the each loop) 
# and m represents the length of the first string in the array (the times loop)
# Space Complexity: O(1)
def longest_prefix(strings)
  prefix = ""
  i = 0
  
  strings[0].length.times do 
    character = strings[0][i] 
    matches = 0
    
    strings.each do |string| 
      if character == string[i]
        matches += 1
      end
    end
    
    if matches == strings.length
      prefix << character
    else
      break
    end
    
    i += 1
  end
  
  return prefix
end

