
# Time Complexity: ? O(n) where n corresponds with the length of input array
# Space Complexity: ? O(1) not creating any additional space in memory here, just deleting in place

def remove_duplicates(list)
  if list.empty? || list.length == 1 
    return list
  else
    i = 0
    j = 1
    until  list[j] == nil
      if list[i] == list[j]
        list.delete_at(i)
      end
      i += 1
      j += 1
    end
    return list
    # raise NotImplementedError, "Not implemented yet"
  end
end

# time complexity: ?
# Space Complexity: ?
# start_with?([prefixes]+) → true or false
# include? other_str → true or false

def longest_prefix(strings)
  return_value = ""
  strings.each_with_index do |string, i|
    char = string[i]
    strings.each_with_index do |string, i|
      if char != string[i]
        return return_value
      end
    end
    return_value << char
  end
  
  raise NotImplementedError, "Not implemented yet"
end


