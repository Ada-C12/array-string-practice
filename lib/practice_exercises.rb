# Time Complexity: O(n^2). n is the length of the list.  It is n^2 because of the delete_at function.
# Space Complexity: O(1). It always returns one array.
def remove_duplicates(list)
  length = list.length
  return list if length <= 1
  
  i = 0
  
  while i < (length - 1)
    if list[i] == list[i+1]
      list.delete_at(i+1)
      length -= 1
      
    else
      i += 1      
    end
  end
  
  return list
end

# Time Complexity: O(n*m). n is the length of the strings array. m is the length of the longest prefix.
# Space Complexity: O(1). It always returns one string.
def longest_prefix(strings)
  first_string = strings[0]
  return first_string if !strings[1]
  
  index = 0
  continue = true
  
  while continue
    strings[1..-1].each do |string|
      if string[index] != first_string[index] || !first_string[index]
        continue = false
        break
      end
    end
    
    index += 1 if continue
  end
  return first_string[0...index]
end
