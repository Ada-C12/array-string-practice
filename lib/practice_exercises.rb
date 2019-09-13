
# Time Complexity: ?
# Space Complexity: ?
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

# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)
  first_string = strings[0]
  
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
