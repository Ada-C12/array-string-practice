require 'pry'
# Time Complexity: O(n) - as array size grows, the evaluation grows at the same rate 
# Space Complexity: O(1) - no new data structures are being made
def remove_duplicates(list)
  if list.length == 1
    return list
  end
  
  i = 0
  
  list.each do |number|
    if number[i+1] == number[i]
      list.delete_at(i)
    else 
      i += 1
    end
  end
  
  return list
  
end

# Time Complexity: ?
# Space Complexity: ?

# strings being passed in is an array of strings
def longest_prefix(strings)
  
  max_length = strings[0].length
  
  return_statement = nil
  
  strings.each do |string|
    if string.length > 0 && string.length < max_length
      max_length = string.length
    elsif string.length == 0
      return_statement = ""
    end
  end
  
  if return_statement != nil
    return return_statement
  end
  
  i = 0 # I am the word you're on
  j = 0 # I am the character you're on
  k = 0 # I am the last characer that matched
  # binding.pry
  until j == max_length || i + 1 == strings.length do
    if strings[i][j] == strings[i + 1][j]
      i += 1
      j += 1
      k = j
    else 
      k -= 1
      break
    end
    
  end
  
  if k < 0
    return ""
  else
    return_statement = strings[0][0...k]
    return return_statement
  end
end
