# Time Complexity: O(n/2) which means O(n). n is the length of the list.
# Space Complexity: O(1). It always returns one array.
def remove_duplicates(list)
  return list if list.length == 1 || list.empty?
  
  i = 0
  
  while i < list.length - 1
    if list[i] == list[i+1]
      list.delete_at(i+1)
      
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
